#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct tcphdr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_refcnt; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;
typedef  enum nf_tproxy_lookup_t { ____Placeholder_nf_tproxy_lookup_t } nf_tproxy_lookup_t ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  inet_rcv_saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  IPPROTO_TCP 131 
#define  IPPROTO_UDP 130 
#define  NF_TPROXY_LOOKUP_ESTABLISHED 129 
#define  NF_TPROXY_LOOKUP_LISTENER 128 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct tcphdr*) ; 
 struct sock* FUNC3 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 struct sock* FUNC4 (struct net*,int /*<<< orphan*/ *,struct sk_buff*,scalar_t__,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC9 (char*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct tcphdr* FUNC11 (struct sk_buff*,scalar_t__,int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  tcp_hashinfo ; 
 struct sock* FUNC13 (struct net*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

struct sock *
FUNC14(struct net *net, struct sk_buff *skb,
		      const u8 protocol,
		      const __be32 saddr, const __be32 daddr,
		      const __be16 sport, const __be16 dport,
		      const struct net_device *in,
		      const enum nf_tproxy_lookup_t lookup_type)
{
	struct sock *sk;

	switch (protocol) {
	case IPPROTO_TCP: {
		struct tcphdr _hdr, *hp;

		hp = FUNC11(skb, FUNC6(skb),
					sizeof(struct tcphdr), &_hdr);
		if (hp == NULL)
			return NULL;

		switch (lookup_type) {
		case NF_TPROXY_LOOKUP_LISTENER:
			sk = FUNC4(net, &tcp_hashinfo, skb,
						    FUNC6(skb) +
						      FUNC2(hp),
						    saddr, sport,
						    daddr, dport,
						    in->ifindex, 0);

			if (sk && !FUNC10(&sk->sk_refcnt))
				sk = NULL;
			/* NOTE: we return listeners even if bound to
			 * 0.0.0.0, those are filtered out in
			 * xt_socket, since xt_TPROXY needs 0 bound
			 * listeners too
			 */
			break;
		case NF_TPROXY_LOOKUP_ESTABLISHED:
			sk = FUNC3(net, &tcp_hashinfo,
						    saddr, sport, daddr, dport,
						    in->ifindex);
			break;
		default:
			FUNC0();
		}
		break;
		}
	case IPPROTO_UDP:
		sk = FUNC13(net, saddr, sport, daddr, dport,
				     in->ifindex);
		if (sk) {
			int connected = (sk->sk_state == TCP_ESTABLISHED);
			int wildcard = (FUNC5(sk)->inet_rcv_saddr == 0);

			/* NOTE: we return listeners even if bound to
			 * 0.0.0.0, those are filtered out in
			 * xt_socket, since xt_TPROXY needs 0 bound
			 * listeners too
			 */
			if ((lookup_type == NF_TPROXY_LOOKUP_ESTABLISHED &&
			      (!connected || wildcard)) ||
			    (lookup_type == NF_TPROXY_LOOKUP_LISTENER && connected)) {
				FUNC12(sk);
				sk = NULL;
			}
		}
		break;
	default:
		FUNC1(1);
		sk = NULL;
	}

	FUNC9("tproxy socket lookup: proto %u %08x:%u -> %08x:%u, lookup type: %d, sock %p\n",
		 protocol, FUNC7(saddr), FUNC8(sport), FUNC7(daddr), FUNC8(dport), lookup_type, sk);

	return sk;
}