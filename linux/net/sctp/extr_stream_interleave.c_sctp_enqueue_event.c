
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_shutdown; int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_ulpq {TYPE_2__* asoc; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_sock {int data_ready_signalled; } ;
struct TYPE_3__ {struct sock* sk; } ;
struct TYPE_4__ {int subscribe; TYPE_1__ base; } ;


 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 struct sk_buff* __skb_peek (struct sk_buff_head*) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int sctp_queue_purge_ulpevents (struct sk_buff_head*) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_ulpevent_free (struct sctp_ulpevent*) ;
 int sctp_ulpevent_is_enabled (struct sctp_ulpevent*,int ) ;
 int sctp_ulpevent_is_notification (struct sctp_ulpevent*) ;
 int sk_incoming_cpu_update (struct sock*) ;
 int sk_mark_napi_id (struct sock*,struct sk_buff*) ;
 int skb_queue_splice_tail_init (struct sk_buff_head*,int *) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int sctp_enqueue_event(struct sctp_ulpq *ulpq,
         struct sk_buff_head *skb_list)
{
 struct sock *sk = ulpq->asoc->base.sk;
 struct sctp_sock *sp = sctp_sk(sk);
 struct sctp_ulpevent *event;
 struct sk_buff *skb;

 skb = __skb_peek(skb_list);
 event = sctp_skb2event(skb);

 if (sk->sk_shutdown & RCV_SHUTDOWN &&
     (sk->sk_shutdown & SEND_SHUTDOWN ||
      !sctp_ulpevent_is_notification(event)))
  goto out_free;

 if (!sctp_ulpevent_is_notification(event)) {
  sk_mark_napi_id(sk, skb);
  sk_incoming_cpu_update(sk);
 }

 if (!sctp_ulpevent_is_enabled(event, ulpq->asoc->subscribe))
  goto out_free;

 if (skb_list)
  skb_queue_splice_tail_init(skb_list,
        &sk->sk_receive_queue);
 else
  __skb_queue_tail(&sk->sk_receive_queue, skb);

 if (!sp->data_ready_signalled) {
  sp->data_ready_signalled = 1;
  sk->sk_data_ready(sk);
 }

 return 1;

out_free:
 if (skb_list)
  sctp_queue_purge_ulpevents(skb_list);
 else
  sctp_ulpevent_free(event);

 return 0;
}
