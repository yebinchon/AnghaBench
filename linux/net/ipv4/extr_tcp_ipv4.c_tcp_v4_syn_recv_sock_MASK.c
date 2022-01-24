#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union tcp_md5_addr {int dummy; } tcp_md5_addr ;
struct tcp_sock {int /*<<< orphan*/  advmss; } ;
struct tcp_md5sig_key {int /*<<< orphan*/  keylen; int /*<<< orphan*/  key; } ;
typedef  struct sock {int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_gso_type; } const sock ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ optlen; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct inet_sock {int /*<<< orphan*/ * inet_opt; int /*<<< orphan*/  inet_daddr; int /*<<< orphan*/  inet_id; int /*<<< orphan*/  rcv_tos; int /*<<< orphan*/  mc_ttl; int /*<<< orphan*/  mc_index; int /*<<< orphan*/  inet_saddr; } ;
struct inet_request_sock {int /*<<< orphan*/ * ireq_opt; int /*<<< orphan*/  ir_loc_addr; int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  ir_rmt_addr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_6__ {scalar_t__ icsk_ext_hdr_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  tos; int /*<<< orphan*/  ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENOVERFLOWS ; 
 int /*<<< orphan*/  NETIF_F_GSO_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ip_options_rcu*) ; 
 int /*<<< orphan*/  SKB_GSO_TCPV4 ; 
 scalar_t__ FUNC2 (struct sock const*,struct sock const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 TYPE_3__* FUNC6 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock const*) ; 
 struct dst_entry* FUNC8 (struct sock const*,struct sock const*,struct request_sock*) ; 
 int FUNC9 (struct sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct inet_request_sock* FUNC11 (struct request_sock*) ; 
 struct inet_sock* FUNC12 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock const*,struct sk_buff*) ; 
 TYPE_2__* FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 struct ip_options_rcu* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct request_sock*) ; 
 scalar_t__ FUNC19 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sock const*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock const*,struct dst_entry*) ; 
 struct sock const* FUNC26 (struct sock const*,struct request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC29 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC30 (struct sock const*,union tcp_md5_addr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_md5sig_key* FUNC31 (struct sock const*,union tcp_md5_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct tcp_sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC33 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC34 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC35 (struct sock const*,int /*<<< orphan*/ ) ; 

struct sock *FUNC36(const struct sock *sk, struct sk_buff *skb,
				  struct request_sock *req,
				  struct dst_entry *dst,
				  struct request_sock *req_unhash,
				  bool *own_req)
{
	struct inet_request_sock *ireq;
	struct inet_sock *newinet;
	struct tcp_sock *newtp;
	struct sock *newsk;
#ifdef CONFIG_TCP_MD5SIG
	struct tcp_md5sig_key *key;
#endif
	struct ip_options_rcu *inet_opt;

	if (FUNC19(sk))
		goto exit_overflow;

	newsk = FUNC26(sk, req, skb);
	if (!newsk)
		goto exit_nonewsk;

	newsk->sk_gso_type = SKB_GSO_TCPV4;
	FUNC13(newsk, skb);

	newtp		      = FUNC34(newsk);
	newinet		      = FUNC12(newsk);
	ireq		      = FUNC11(req);
	FUNC20(newsk, ireq->ir_rmt_addr);
	FUNC22(newsk, ireq->ir_loc_addr);
	newsk->sk_bound_dev_if = ireq->ir_iif;
	newinet->inet_saddr   = ireq->ir_loc_addr;
	inet_opt	      = FUNC17(ireq->ireq_opt);
	FUNC1(newinet->inet_opt, inet_opt);
	newinet->mc_index     = FUNC10(skb);
	newinet->mc_ttl	      = FUNC14(skb)->ttl;
	newinet->rcv_tos      = FUNC14(skb)->tos;
	FUNC6(newsk)->icsk_ext_hdr_len = 0;
	if (inet_opt)
		FUNC6(newsk)->icsk_ext_hdr_len = inet_opt->opt.optlen;
	newinet->inet_id = FUNC16();

	if (!dst) {
		dst = FUNC8(sk, newsk, req);
		if (!dst)
			goto put_and_exit;
	} else {
		/* syncookie case : see end of cookie_v4_check() */
	}
	FUNC23(newsk, dst);

	FUNC25(newsk, dst);

	FUNC35(newsk, FUNC4(dst));
	newtp->advmss = FUNC33(FUNC34(sk), FUNC3(dst));

	FUNC28(newsk);

#ifdef CONFIG_TCP_MD5SIG
	/* Copy over the MD5 key from the original socket */
	key = tcp_md5_do_lookup(sk, (union tcp_md5_addr *)&newinet->inet_daddr,
				AF_INET);
	if (key) {
		/*
		 * We're using one, so create a matching key
		 * on the newsk structure. If we fail to get
		 * memory, then we end up not copying the key
		 * across. Shucks.
		 */
		tcp_md5_do_add(newsk, (union tcp_md5_addr *)&newinet->inet_daddr,
			       AF_INET, 32, key->key, key->keylen, GFP_ATOMIC);
		sk_nocaps_add(newsk, NETIF_F_GSO_MASK);
	}
#endif

	if (FUNC2(sk, newsk) < 0)
		goto put_and_exit;
	*own_req = FUNC9(newsk, FUNC18(req_unhash));
	if (FUNC15(*own_req)) {
		FUNC32(newtp, req);
		ireq->ireq_opt = NULL;
	} else {
		newinet->inet_opt = NULL;
	}
	return newsk;

exit_overflow:
	FUNC0(FUNC24(sk), LINUX_MIB_LISTENOVERFLOWS);
exit_nonewsk:
	FUNC5(dst);
exit:
	FUNC29(sk);
	return NULL;
put_and_exit:
	newinet->inet_opt = NULL;
	FUNC7(newsk);
	FUNC27(newsk);
	goto exit;
}