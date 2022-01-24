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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct udphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct udp_table {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {TYPE_3__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct inet_sock {int /*<<< orphan*/  recverr; int /*<<< orphan*/  pmtudisc; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_5__ {int fatal; int errno; } ;
struct TYPE_4__ {int type; int code; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  ENOENT ; 
 int EPROTO ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ) ; 
#define  ICMP_DEST_UNREACH 132 
 int const ICMP_FRAG_NEEDED ; 
 int /*<<< orphan*/  ICMP_MIB_INERRORS ; 
#define  ICMP_PARAMETERPROB 131 
#define  ICMP_REDIRECT 130 
#define  ICMP_SOURCE_QUENCH 129 
#define  ICMP_TIME_EXCEEDED 128 
 int /*<<< orphan*/  IP_PMTUDISC_DONT ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int const NR_ICMP_UNREACH ; 
 int FUNC2 (struct sock*) ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC4 (struct net*,struct iphdr const*,struct udphdr*,struct udp_table*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udp_table*,int /*<<< orphan*/ *) ; 
 struct net* FUNC6 (TYPE_3__*) ; 
 TYPE_2__* icmp_err_convert ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct inet_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  udp_encap_needed_key ; 

int FUNC15(struct sk_buff *skb, u32 info, struct udp_table *udptable)
{
	struct inet_sock *inet;
	const struct iphdr *iph = (const struct iphdr *)skb->data;
	struct udphdr *uh = (struct udphdr *)(skb->data+(iph->ihl<<2));
	const int type = FUNC7(skb)->type;
	const int code = FUNC7(skb)->code;
	bool tunnel = false;
	struct sock *sk;
	int harderr;
	int err;
	struct net *net = FUNC6(skb->dev);

	sk = FUNC5(net, iph->daddr, uh->dest,
			       iph->saddr, uh->source, skb->dev->ifindex,
			       FUNC8(skb), udptable, NULL);
	if (!sk) {
		/* No socket for error: try tunnels before discarding */
		sk = FUNC0(-ENOENT);
		if (FUNC13(&udp_encap_needed_key)) {
			sk = FUNC4(net, iph, uh, udptable, skb,
						  info);
			if (!sk)
				return 0;
		}

		if (FUNC1(sk)) {
			FUNC3(net, ICMP_MIB_INERRORS);
			return FUNC2(sk);
		}

		tunnel = true;
	}

	err = 0;
	harderr = 0;
	inet = FUNC9(sk);

	switch (type) {
	default:
	case ICMP_TIME_EXCEEDED:
		err = EHOSTUNREACH;
		break;
	case ICMP_SOURCE_QUENCH:
		goto out;
	case ICMP_PARAMETERPROB:
		err = EPROTO;
		harderr = 1;
		break;
	case ICMP_DEST_UNREACH:
		if (code == ICMP_FRAG_NEEDED) { /* Path MTU discovery */
			FUNC12(skb, sk, info);
			if (inet->pmtudisc != IP_PMTUDISC_DONT) {
				err = EMSGSIZE;
				harderr = 1;
				break;
			}
			goto out;
		}
		err = EHOSTUNREACH;
		if (code <= NR_ICMP_UNREACH) {
			harderr = icmp_err_convert[code].fatal;
			err = icmp_err_convert[code].errno;
		}
		break;
	case ICMP_REDIRECT:
		FUNC11(skb, sk);
		goto out;
	}

	/*
	 *      RFC1122: OK.  Passes ICMP errors back to application, as per
	 *	4.1.3.3.
	 */
	if (tunnel) {
		/* ...not for tunnels though: we don't have a sending socket */
		goto out;
	}
	if (!inet->recverr) {
		if (!harderr || sk->sk_state != TCP_ESTABLISHED)
			goto out;
	} else
		FUNC10(sk, skb, err, uh->dest, info, (u8 *)(uh+1));

	sk->sk_err = err;
	sk->sk_error_report(sk);
out:
	return 0;
}