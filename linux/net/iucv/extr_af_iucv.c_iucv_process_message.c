
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct sock {int sk_drops; } ;
struct sk_buff {void* data; unsigned int len; scalar_t__ head; } ;
struct iucv_path {int dummy; } ;
struct iucv_message {int flags; int rmmsg; int class; } ;
struct iucv_array {void* length; void* address; } ;
typedef int skb_frag_t ;
typedef scalar_t__ addr_t ;
struct TYPE_8__ {scalar_t__ offset; int class; } ;
struct TYPE_7__ {int backlog_skb_q; } ;
struct TYPE_6__ {int (* message_receive ) (struct iucv_path*,struct iucv_message*,int,void*,unsigned int,int *) ;} ;
struct TYPE_5__ {int nr_frags; int * frags; } ;


 int IUCV_IPBUFLST ;
 int IUCV_IPRMDATA ;
 TYPE_4__* IUCV_SKB_CB (struct sk_buff*) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ __sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int atomic_inc (int *) ;
 int iprm_shutdown ;
 unsigned int iucv_msg_length (struct iucv_message*) ;
 TYPE_3__* iucv_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 TYPE_2__* pr_iucv ;
 scalar_t__ sk_filter (struct sock*,struct sk_buff*) ;
 scalar_t__ skb_frag_address (int *) ;
 scalar_t__ skb_frag_size (int *) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int stub1 (struct iucv_path*,struct iucv_message*,int,void*,unsigned int,int *) ;
 int stub2 (struct iucv_path*,struct iucv_message*,int,void*,unsigned int,int *) ;

__attribute__((used)) static void iucv_process_message(struct sock *sk, struct sk_buff *skb,
     struct iucv_path *path,
     struct iucv_message *msg)
{
 int rc;
 unsigned int len;

 len = iucv_msg_length(msg);



 IUCV_SKB_CB(skb)->class = msg->class;


 if ((msg->flags & IUCV_IPRMDATA) && len > 7) {
  if (memcmp(msg->rmmsg, iprm_shutdown, 8) == 0) {
   skb->data = ((void*)0);
   skb->len = 0;
  }
 } else {
  if (skb_is_nonlinear(skb)) {
   struct iucv_array *iba = (struct iucv_array *)skb->head;
   int i;

   iba[0].address = (u32)(addr_t)skb->data;
   iba[0].length = (u32)skb_headlen(skb);
   for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
    skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

    iba[i + 1].address =
     (u32)(addr_t)skb_frag_address(frag);
    iba[i + 1].length = (u32)skb_frag_size(frag);
   }
   rc = pr_iucv->message_receive(path, msg,
           IUCV_IPBUFLST,
           (void *)iba, len, ((void*)0));
  } else {
   rc = pr_iucv->message_receive(path, msg,
           msg->flags & IUCV_IPRMDATA,
           skb->data, len, ((void*)0));
  }
  if (rc) {
   kfree_skb(skb);
   return;
  }
  WARN_ON_ONCE(skb->len != len);
 }

 IUCV_SKB_CB(skb)->offset = 0;
 if (sk_filter(sk, skb)) {
  atomic_inc(&sk->sk_drops);
  kfree_skb(skb);
  return;
 }
 if (__sock_queue_rcv_skb(sk, skb))
  skb_queue_tail(&iucv_sk(sk)->backlog_skb_q, skb);
}
