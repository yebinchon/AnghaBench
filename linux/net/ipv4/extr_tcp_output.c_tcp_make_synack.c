
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct tcphdr {int syn; int ack; int doff; int hash_location; void* window; void* ack_seq; void* seq; int dest; void* source; } ;
struct tcp_sock {int dummy; } ;
struct tcp_out_options {int syn; int ack; int doff; int hash_location; void* window; void* ack_seq; void* seq; int dest; void* source; } ;
struct tcp_md5sig_key {int dummy; } ;
struct tcp_fastopen_cookie {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {void* skb_mstamp_ns; int ip_summed; int mark; scalar_t__ data; } ;
struct request_sock {int cookie_ts; int rsk_rcv_wnd; } ;
struct inet_request_sock {int ir_mark; int ir_rmt_port; int ir_num; } ;
struct dst_entry {int dummy; } ;
typedef int opts ;
typedef enum tcp_synack_type { ____Placeholder_tcp_synack_type } tcp_synack_type ;
typedef int __be32 ;
struct TYPE_4__ {TYPE_1__* af_specific; int rcv_nxt; int snt_isn; int txhash; scalar_t__ snt_synack; } ;
struct TYPE_3__ {int (* calc_md5_hash ) (int ,struct tcp_md5sig_key*,struct sock*,struct sk_buff*) ;struct tcp_md5sig_key* (* req_md5_lookup ) (struct sock const*,struct sock*) ;} ;


 int CHECKSUM_PARTIAL ;
 int GFP_ATOMIC ;
 int MAX_TCP_HEADER ;
 int PKT_HASH_TYPE_L4 ;
 int TCP_MIB_OUTSEGS ;



 int __TCP_INC_STATS (int ,int ) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 void* cookie_init_timestamp (struct request_sock*) ;
 int dst_metric_advmss (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 void* htonl (int ) ;
 void* htons (int ) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 int memset (struct tcphdr*,int ,int) ;
 int min (int ,unsigned int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sock* req_to_sk (struct request_sock*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;
 int sock_net (struct sock const*) ;
 struct tcp_md5sig_key* stub1 (struct sock const*,struct sock*) ;
 int stub2 (int ,struct tcp_md5sig_key*,struct sock*,struct sk_buff*) ;
 int tcp_add_tx_delay (struct sk_buff*,struct tcp_sock const*) ;
 void* tcp_clock_ns () ;
 int tcp_ecn_make_synack (struct request_sock*,struct tcphdr*) ;
 int tcp_mss_clamp (struct tcp_sock const*,int ) ;
 int tcp_options_write (int *,int *,struct tcphdr*) ;
 TYPE_2__* tcp_rsk (struct request_sock*) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;
 scalar_t__ tcp_skb_timestamp_us (struct sk_buff*) ;
 int tcp_synack_options (struct sock const*,struct request_sock*,int,struct sk_buff*,struct tcphdr*,struct tcp_md5sig_key*,struct tcp_fastopen_cookie*) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *tcp_make_synack(const struct sock *sk, struct dst_entry *dst,
    struct request_sock *req,
    struct tcp_fastopen_cookie *foc,
    enum tcp_synack_type synack_type)
{
 struct inet_request_sock *ireq = inet_rsk(req);
 const struct tcp_sock *tp = tcp_sk(sk);
 struct tcp_md5sig_key *md5 = ((void*)0);
 struct tcp_out_options opts;
 struct sk_buff *skb;
 int tcp_header_size;
 struct tcphdr *th;
 int mss;
 u64 now;

 skb = alloc_skb(MAX_TCP_HEADER, GFP_ATOMIC);
 if (unlikely(!skb)) {
  dst_release(dst);
  return ((void*)0);
 }

 skb_reserve(skb, MAX_TCP_HEADER);

 switch (synack_type) {
 case 128:
  skb_set_owner_w(skb, req_to_sk(req));
  break;
 case 130:



  break;
 case 129:




  skb_set_owner_w(skb, (struct sock *)sk);
  break;
 }
 skb_dst_set(skb, dst);

 mss = tcp_mss_clamp(tp, dst_metric_advmss(dst));

 memset(&opts, 0, sizeof(opts));
 now = tcp_clock_ns();





 {
  skb->skb_mstamp_ns = now;
  if (!tcp_rsk(req)->snt_synack)
   tcp_rsk(req)->snt_synack = tcp_skb_timestamp_us(skb);
 }





 skb_set_hash(skb, tcp_rsk(req)->txhash, PKT_HASH_TYPE_L4);
 tcp_header_size = tcp_synack_options(sk, req, mss, skb, &opts, md5,
          foc) + sizeof(*th);

 skb_push(skb, tcp_header_size);
 skb_reset_transport_header(skb);

 th = (struct tcphdr *)skb->data;
 memset(th, 0, sizeof(struct tcphdr));
 th->syn = 1;
 th->ack = 1;
 tcp_ecn_make_synack(req, th);
 th->source = htons(ireq->ir_num);
 th->dest = ireq->ir_rmt_port;
 skb->mark = ireq->ir_mark;
 skb->ip_summed = CHECKSUM_PARTIAL;
 th->seq = htonl(tcp_rsk(req)->snt_isn);

 th->ack_seq = htonl(tcp_rsk(req)->rcv_nxt);


 th->window = htons(min(req->rsk_rcv_wnd, 65535U));
 tcp_options_write((__be32 *)(th + 1), ((void*)0), &opts);
 th->doff = (tcp_header_size >> 2);
 __TCP_INC_STATS(sock_net(sk), TCP_MIB_OUTSEGS);
 skb->skb_mstamp_ns = now;
 tcp_add_tx_delay(skb, tp);

 return skb;
}
