
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; int* data; } ;
struct net_device {int dummy; } ;
typedef int rose_address ;


 unsigned short ROSE_CALL_REQUEST ;
 size_t ROSE_CALL_REQ_ADDR_LEN_OFF ;
 unsigned short ROSE_CALL_REQ_ADDR_LEN_VAL ;
 int ROSE_CALL_REQ_DEST_ADDR_OFF ;
 scalar_t__ ROSE_CALL_REQ_FACILITIES_OFF ;
 int ROSE_DEFAULT_MAXVC ;
 int ROSE_LOOPBACK_LIMIT ;
 scalar_t__ ROSE_MIN_LEN ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int loopback_queue ;
 int loopback_timer ;
 int mod_timer (int *,scalar_t__) ;
 struct net_device* rose_dev_get (int *) ;
 struct sock* rose_find_socket (unsigned int,int ) ;
 int rose_loopback_neigh ;
 scalar_t__ rose_process_rx_frame (struct sock*,struct sk_buff*) ;
 scalar_t__ rose_rx_call_request (struct sk_buff*,struct net_device*,int ,unsigned int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static void rose_loopback_timer(struct timer_list *unused)
{
 struct sk_buff *skb;
 struct net_device *dev;
 rose_address *dest;
 struct sock *sk;
 unsigned short frametype;
 unsigned int lci_i, lci_o;
 int count;

 for (count = 0; count < ROSE_LOOPBACK_LIMIT; count++) {
  skb = skb_dequeue(&loopback_queue);
  if (!skb)
   return;
  if (skb->len < ROSE_MIN_LEN) {
   kfree_skb(skb);
   continue;
  }
  lci_i = ((skb->data[0] << 8) & 0xF00) + ((skb->data[1] << 0) & 0x0FF);
  frametype = skb->data[2];
  if (frametype == ROSE_CALL_REQUEST &&
      (skb->len <= ROSE_CALL_REQ_FACILITIES_OFF ||
       skb->data[ROSE_CALL_REQ_ADDR_LEN_OFF] !=
       ROSE_CALL_REQ_ADDR_LEN_VAL)) {
   kfree_skb(skb);
   continue;
  }
  dest = (rose_address *)(skb->data + ROSE_CALL_REQ_DEST_ADDR_OFF);
  lci_o = ROSE_DEFAULT_MAXVC + 1 - lci_i;

  skb_reset_transport_header(skb);

  sk = rose_find_socket(lci_o, rose_loopback_neigh);
  if (sk) {
   if (rose_process_rx_frame(sk, skb) == 0)
    kfree_skb(skb);
   continue;
  }

  if (frametype == ROSE_CALL_REQUEST) {
   if ((dev = rose_dev_get(dest)) != ((void*)0)) {
    if (rose_rx_call_request(skb, dev, rose_loopback_neigh, lci_o) == 0)
     kfree_skb(skb);
   } else {
    kfree_skb(skb);
   }
  } else {
   kfree_skb(skb);
  }
 }
 if (!skb_queue_empty(&loopback_queue))
  mod_timer(&loopback_timer, jiffies + 1);
}
