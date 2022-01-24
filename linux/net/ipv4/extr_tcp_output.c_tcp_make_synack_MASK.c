#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct tcphdr {int syn; int ack; int doff; int /*<<< orphan*/  hash_location; void* window; void* ack_seq; void* seq; int /*<<< orphan*/  dest; void* source; } ;
struct tcp_sock {int dummy; } ;
struct tcp_out_options {int syn; int ack; int doff; int /*<<< orphan*/  hash_location; void* window; void* ack_seq; void* seq; int /*<<< orphan*/  dest; void* source; } ;
struct tcp_md5sig_key {int dummy; } ;
struct tcp_fastopen_cookie {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {void* skb_mstamp_ns; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  mark; scalar_t__ data; } ;
struct request_sock {int cookie_ts; int /*<<< orphan*/  rsk_rcv_wnd; } ;
struct inet_request_sock {int /*<<< orphan*/  ir_mark; int /*<<< orphan*/  ir_rmt_port; int /*<<< orphan*/  ir_num; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  opts ;
typedef  enum tcp_synack_type { ____Placeholder_tcp_synack_type } tcp_synack_type ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {TYPE_1__* af_specific; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  snt_isn; int /*<<< orphan*/  txhash; scalar_t__ snt_synack; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* calc_md5_hash ) (int /*<<< orphan*/ ,struct tcp_md5sig_key*,struct sock*,struct sk_buff*) ;struct tcp_md5sig_key* (* req_md5_lookup ) (struct sock const*,struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MAX_TCP_HEADER ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L4 ; 
 int /*<<< orphan*/  TCP_MIB_OUTSEGS ; 
#define  TCP_SYNACK_COOKIE 130 
#define  TCP_SYNACK_FASTOPEN 129 
#define  TCP_SYNACK_NORMAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct inet_request_sock* FUNC7 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcphdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct sock* FUNC12 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock const*) ; 
 struct tcp_md5sig_key* FUNC20 (struct sock const*,struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct tcp_md5sig_key*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,struct tcp_sock const*) ; 
 void* FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct request_sock*,struct tcphdr*) ; 
 int FUNC25 (struct tcp_sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct tcphdr*) ; 
 TYPE_2__* FUNC27 (struct request_sock*) ; 
 struct tcp_sock* FUNC28 (struct sock const*) ; 
 scalar_t__ FUNC29 (struct sk_buff*) ; 
 int FUNC30 (struct sock const*,struct request_sock*,int,struct sk_buff*,struct tcphdr*,struct tcp_md5sig_key*,struct tcp_fastopen_cookie*) ; 
 scalar_t__ FUNC31 (int) ; 

struct sk_buff *FUNC32(const struct sock *sk, struct dst_entry *dst,
				struct request_sock *req,
				struct tcp_fastopen_cookie *foc,
				enum tcp_synack_type synack_type)
{
	struct inet_request_sock *ireq = FUNC7(req);
	const struct tcp_sock *tp = FUNC28(sk);
	struct tcp_md5sig_key *md5 = NULL;
	struct tcp_out_options opts;
	struct sk_buff *skb;
	int tcp_header_size;
	struct tcphdr *th;
	int mss;
	u64 now;

	skb = FUNC1(MAX_TCP_HEADER, GFP_ATOMIC);
	if (FUNC31(!skb)) {
		FUNC4(dst);
		return NULL;
	}
	/* Reserve space for headers. */
	FUNC15(skb, MAX_TCP_HEADER);

	switch (synack_type) {
	case TCP_SYNACK_NORMAL:
		FUNC18(skb, FUNC12(req));
		break;
	case TCP_SYNACK_COOKIE:
		/* Under synflood, we do not attach skb to a socket,
		 * to avoid false sharing.
		 */
		break;
	case TCP_SYNACK_FASTOPEN:
		/* sk is a const pointer, because we want to express multiple
		 * cpu might call us concurrently.
		 * sk->sk_wmem_alloc in an atomic, we can promote to rw.
		 */
		FUNC18(skb, (struct sock *)sk);
		break;
	}
	FUNC13(skb, dst);

	mss = FUNC25(tp, FUNC3(dst));

	FUNC8(&opts, 0, sizeof(opts));
	now = FUNC23();
#ifdef CONFIG_SYN_COOKIES
	if (unlikely(req->cookie_ts))
		skb->skb_mstamp_ns = cookie_init_timestamp(req);
	else
#endif
	{
		skb->skb_mstamp_ns = now;
		if (!FUNC27(req)->snt_synack) /* Timestamp first SYNACK */
			FUNC27(req)->snt_synack = FUNC29(skb);
	}

#ifdef CONFIG_TCP_MD5SIG
	rcu_read_lock();
	md5 = tcp_rsk(req)->af_specific->req_md5_lookup(sk, req_to_sk(req));
#endif
	FUNC17(skb, FUNC27(req)->txhash, PKT_HASH_TYPE_L4);
	tcp_header_size = FUNC30(sk, req, mss, skb, &opts, md5,
					     foc) + sizeof(*th);

	FUNC14(skb, tcp_header_size);
	FUNC16(skb);

	th = (struct tcphdr *)skb->data;
	FUNC8(th, 0, sizeof(struct tcphdr));
	th->syn = 1;
	th->ack = 1;
	FUNC24(req, th);
	th->source = FUNC6(ireq->ir_num);
	th->dest = ireq->ir_rmt_port;
	skb->mark = ireq->ir_mark;
	skb->ip_summed = CHECKSUM_PARTIAL;
	th->seq = FUNC5(FUNC27(req)->snt_isn);
	/* XXX data is queued and acked as is. No buffer/window check */
	th->ack_seq = FUNC5(FUNC27(req)->rcv_nxt);

	/* RFC1323: The window in SYN & SYN/ACK segments is never scaled. */
	th->window = FUNC6(FUNC9(req->rsk_rcv_wnd, 65535U));
	FUNC26((__be32 *)(th + 1), NULL, &opts);
	th->doff = (tcp_header_size >> 2);
	FUNC0(FUNC19(sk), TCP_MIB_OUTSEGS);

#ifdef CONFIG_TCP_MD5SIG
	/* Okay, we have all we need - do the md5 hash if needed */
	if (md5)
		tcp_rsk(req)->af_specific->calc_md5_hash(opts.hash_location,
					       md5, req_to_sk(req), skb);
	rcu_read_unlock();
#endif

	skb->skb_mstamp_ns = now;
	FUNC22(skb, tp);

	return skb;
}