
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int* data; scalar_t__ len; int dev; } ;
struct TYPE_6__ {int fragno; int frag_queue; scalar_t__ fraglen; TYPE_1__* ax25_dev; } ;
typedef TYPE_2__ ax25_cb ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ AX25_MAX_HEADER_LEN ;
 int AX25_SEG_FIRST ;
 int AX25_SEG_REM ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 scalar_t__ ax25_rx_iframe (TYPE_2__*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,scalar_t__) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_queue_purge (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int ax25_rx_fragment(ax25_cb *ax25, struct sk_buff *skb)
{
 struct sk_buff *skbn, *skbo;

 if (ax25->fragno != 0) {
  if (!(*skb->data & AX25_SEG_FIRST)) {
   if ((ax25->fragno - 1) == (*skb->data & AX25_SEG_REM)) {

    ax25->fragno = *skb->data & AX25_SEG_REM;
    skb_pull(skb, 1);
    ax25->fraglen += skb->len;
    skb_queue_tail(&ax25->frag_queue, skb);


    if (ax25->fragno == 0) {
     skbn = alloc_skb(AX25_MAX_HEADER_LEN +
        ax25->fraglen,
        GFP_ATOMIC);
     if (!skbn) {
      skb_queue_purge(&ax25->frag_queue);
      return 1;
     }

     skb_reserve(skbn, AX25_MAX_HEADER_LEN);

     skbn->dev = ax25->ax25_dev->dev;
     skb_reset_network_header(skbn);
     skb_reset_transport_header(skbn);


     while ((skbo = skb_dequeue(&ax25->frag_queue)) != ((void*)0)) {
      skb_copy_from_linear_data(skbo,
         skb_put(skbn, skbo->len),
           skbo->len);
      kfree_skb(skbo);
     }

     ax25->fraglen = 0;

     if (ax25_rx_iframe(ax25, skbn) == 0)
      kfree_skb(skbn);
    }

    return 1;
   }
  }
 } else {

  if (*skb->data & AX25_SEG_FIRST) {
   skb_queue_purge(&ax25->frag_queue);
   ax25->fragno = *skb->data & AX25_SEG_REM;
   skb_pull(skb, 1);
   ax25->fraglen = skb->len;
   skb_queue_tail(&ax25->frag_queue, skb);
   return 1;
  }
 }

 return 0;
}
