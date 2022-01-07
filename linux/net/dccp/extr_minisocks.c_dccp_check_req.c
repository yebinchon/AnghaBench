
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {TYPE_2__* rsk_ops; } ;
struct dccp_request_sock {int dreq_lock; scalar_t__ dreq_gss; scalar_t__ dreq_iss; int dreq_gsr; } ;
struct TYPE_10__ {int dccpd_reset_code; scalar_t__ dccpd_ack_seq; int dccpd_seq; } ;
struct TYPE_9__ {scalar_t__ dccph_type; } ;
struct TYPE_8__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_7__ {int (* send_reset ) (struct sock*,struct sk_buff*) ;} ;
struct TYPE_6__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,int *,struct request_sock*,int*) ;} ;


 scalar_t__ DCCP_PKT_ACK ;
 scalar_t__ DCCP_PKT_DATAACK ;
 scalar_t__ DCCP_PKT_REQUEST ;
 scalar_t__ DCCP_PKT_RESET ;
 int DCCP_RESET_CODE_PACKET_ERROR ;
 int DCCP_RESET_CODE_TOO_BUSY ;
 TYPE_5__* DCCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after48 (int ,int ) ;
 int between48 (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_4__* dccp_hdr (struct sk_buff*) ;
 scalar_t__ dccp_parse_options (struct sock*,struct dccp_request_sock*,struct sk_buff*) ;
 int dccp_pr_debug (char*,...) ;
 struct dccp_request_sock* dccp_rsk (struct request_sock*) ;
 TYPE_3__* inet_csk (struct sock*) ;
 struct sock* inet_csk_complete_hashdance (struct sock*,struct sock*,struct request_sock*,int) ;
 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*) ;
 int inet_rtx_syn_ack (struct sock*,struct request_sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct sock* stub1 (struct sock*,struct sk_buff*,struct request_sock*,int *,struct request_sock*,int*) ;
 int stub2 (struct sock*,struct sk_buff*) ;

struct sock *dccp_check_req(struct sock *sk, struct sk_buff *skb,
       struct request_sock *req)
{
 struct sock *child = ((void*)0);
 struct dccp_request_sock *dreq = dccp_rsk(req);
 bool own_req;






 spin_lock_bh(&dreq->dreq_lock);


 if (dccp_hdr(skb)->dccph_type == DCCP_PKT_REQUEST) {

  if (after48(DCCP_SKB_CB(skb)->dccpd_seq, dreq->dreq_gsr)) {
   dccp_pr_debug("Retransmitted REQUEST\n");
   dreq->dreq_gsr = DCCP_SKB_CB(skb)->dccpd_seq;





   inet_rtx_syn_ack(sk, req);
  }

  goto out;
 }

 DCCP_SKB_CB(skb)->dccpd_reset_code = DCCP_RESET_CODE_PACKET_ERROR;

 if (dccp_hdr(skb)->dccph_type != DCCP_PKT_ACK &&
     dccp_hdr(skb)->dccph_type != DCCP_PKT_DATAACK)
  goto drop;


 if (!between48(DCCP_SKB_CB(skb)->dccpd_ack_seq,
    dreq->dreq_iss, dreq->dreq_gss)) {
  dccp_pr_debug("Invalid ACK number: ack_seq=%llu, "
         "dreq_iss=%llu, dreq_gss=%llu\n",
         (unsigned long long)
         DCCP_SKB_CB(skb)->dccpd_ack_seq,
         (unsigned long long) dreq->dreq_iss,
         (unsigned long long) dreq->dreq_gss);
  goto drop;
 }

 if (dccp_parse_options(sk, dreq, skb))
   goto drop;

 child = inet_csk(sk)->icsk_af_ops->syn_recv_sock(sk, skb, req, ((void*)0),
        req, &own_req);
 if (child) {
  child = inet_csk_complete_hashdance(sk, child, req, own_req);
  goto out;
 }

 DCCP_SKB_CB(skb)->dccpd_reset_code = DCCP_RESET_CODE_TOO_BUSY;
drop:
 if (dccp_hdr(skb)->dccph_type != DCCP_PKT_RESET)
  req->rsk_ops->send_reset(sk, skb);

 inet_csk_reqsk_queue_drop(sk, req);
out:
 spin_unlock_bh(&dreq->dreq_lock);
 return child;
}
