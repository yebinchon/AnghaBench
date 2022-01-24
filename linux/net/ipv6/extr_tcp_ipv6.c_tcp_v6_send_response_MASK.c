#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct tcphdr {unsigned int doff; int ack; int rst; int flowi6_oif; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  source; int /*<<< orphan*/  fl6_sport; int /*<<< orphan*/  dest; int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  saddr; int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  window; void* ack_seq; void* seq; } ;
struct tcp_md5sig_key {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_mark; } ;
struct sk_buff {int skb_iif; int /*<<< orphan*/  mark; int /*<<< orphan*/  tstamp; scalar_t__ csum; int /*<<< orphan*/  ip_summed; } ;
struct TYPE_5__ {struct sock* tcp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct ipv6hdr {int dummy; } ;
struct flowi6 {unsigned int doff; int ack; int rst; int flowi6_oif; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  source; int /*<<< orphan*/  fl6_sport; int /*<<< orphan*/  dest; int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  saddr; int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  window; void* ack_seq; void* seq; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl6 ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_8__ {int /*<<< orphan*/  tw_txhash; int /*<<< orphan*/  tw_mark; } ;
struct TYPE_7__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 scalar_t__ MAX_HEADER ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L4 ; 
 int TCPOLEN_MD5SIG ; 
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ; 
 int TCPOLEN_TIMESTAMP ; 
 scalar_t__ TCPOLEN_TSTAMP_ALIGNED ; 
 int TCPOPT_MD5SIG ; 
 int TCPOPT_NOP ; 
 int TCPOPT_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_MIB_OUTRSTS ; 
 int /*<<< orphan*/  TCP_MIB_OUTSEGS ; 
 scalar_t__ TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tcphdr*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_4__* FUNC9 (struct sock const*) ; 
 struct dst_entry* FUNC10 (struct sock*,struct tcphdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sk_buff*,struct tcphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct tcphdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (struct net*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct sock const*) ; 
 TYPE_2__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct dst_entry*) ; 
 struct tcphdr* FUNC21 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC25 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC26 (struct net*,struct sock const*) ; 
 struct tcphdr* FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock const*) ; 
 int FUNC29 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,struct tcp_md5sig_key*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct tcphdr*) ; 

__attribute__((used)) static void FUNC31(const struct sock *sk, struct sk_buff *skb, u32 seq,
				 u32 ack, u32 win, u32 tsval, u32 tsecr,
				 int oif, struct tcp_md5sig_key *key, int rst,
				 u8 tclass, __be32 label, u32 priority)
{
	const struct tcphdr *th = FUNC27(skb);
	struct tcphdr *t1;
	struct sk_buff *buff;
	struct flowi6 fl6;
	struct net *net = sk ? FUNC25(sk) : FUNC5(FUNC19(skb)->dev);
	struct sock *ctl_sk = net->ipv6.tcp_sk;
	unsigned int tot_len = sizeof(struct tcphdr);
	struct dst_entry *dst;
	__be32 *topt;
	__u32 mark = 0;

	if (tsecr)
		tot_len += TCPOLEN_TSTAMP_ALIGNED;
#ifdef CONFIG_TCP_MD5SIG
	if (key)
		tot_len += TCPOLEN_MD5SIG_ALIGNED;
#endif

	buff = FUNC4(MAX_HEADER + sizeof(struct ipv6hdr) + tot_len,
			 GFP_ATOMIC);
	if (!buff)
		return;

	FUNC22(buff, MAX_HEADER + sizeof(struct ipv6hdr) + tot_len);

	t1 = FUNC21(buff, tot_len);
	FUNC23(buff);

	/* Swap the send and the receive. */
	FUNC14(t1, 0, sizeof(*t1));
	t1->dest = th->source;
	t1->source = th->dest;
	t1->doff = tot_len / 4;
	t1->seq = FUNC7(seq);
	t1->ack_seq = FUNC7(ack);
	t1->ack = !rst || !th->ack;
	t1->rst = rst;
	t1->window = FUNC8(win);

	topt = (__be32 *)(t1 + 1);

	if (tsecr) {
		*topt++ = FUNC7((TCPOPT_NOP << 24) | (TCPOPT_NOP << 16) |
				(TCPOPT_TIMESTAMP << 8) | TCPOLEN_TIMESTAMP);
		*topt++ = FUNC7(tsval);
		*topt++ = FUNC7(tsecr);
	}

#ifdef CONFIG_TCP_MD5SIG
	if (key) {
		*topt++ = htonl((TCPOPT_NOP << 24) | (TCPOPT_NOP << 16) |
				(TCPOPT_MD5SIG << 8) | TCPOLEN_MD5SIG);
		tcp_v6_md5_hash_hdr((__u8 *)topt, key,
				    &ipv6_hdr(skb)->saddr,
				    &ipv6_hdr(skb)->daddr, t1);
	}
#endif

	FUNC14(&fl6, 0, sizeof(fl6));
	fl6.daddr = FUNC12(skb)->saddr;
	fl6.saddr = FUNC12(skb)->daddr;
	fl6.flowlabel = label;

	buff->ip_summed = CHECKSUM_PARTIAL;
	buff->csum = 0;

	FUNC3(buff, &fl6.saddr, &fl6.daddr);

	fl6.flowi6_proto = IPPROTO_TCP;
	if (FUNC16(&fl6.daddr) && !oif)
		fl6.flowi6_oif = FUNC29(skb);
	else {
		if (!oif && FUNC15(net, skb->skb_iif))
			oif = skb->skb_iif;

		fl6.flowi6_oif = oif;
	}

	if (sk) {
		if (sk->sk_state == TCP_TIME_WAIT) {
			mark = FUNC9(sk)->tw_mark;
			/* autoflowlabel relies on buff->hash */
			FUNC24(buff, FUNC9(sk)->tw_txhash,
				     PKT_HASH_TYPE_L4);
		} else {
			mark = sk->sk_mark;
		}
		buff->tstamp = FUNC28(sk);
	}
	fl6.flowi6_mark = FUNC0(net, skb->mark) ?: mark;
	fl6.fl6_dport = t1->dest;
	fl6.fl6_sport = t1->source;
	fl6.flowi6_uid = FUNC26(net, sk && FUNC18(sk) ? sk : NULL);
	FUNC17(skb, FUNC6(&fl6));

	/* Pass a socket to ip6_dst_lookup either it is for RST
	 * Underlying function will use this to retrieve the network
	 * namespace
	 */
	dst = FUNC10(ctl_sk, &fl6, NULL);
	if (!FUNC1(dst)) {
		FUNC20(buff, dst);
		FUNC11(ctl_sk, buff, &fl6, fl6.flowi6_mark, NULL, tclass,
			 priority);
		FUNC2(net, TCP_MIB_OUTSEGS);
		if (rst)
			FUNC2(net, TCP_MIB_OUTRSTS);
		return;
	}

	FUNC13(buff);
}