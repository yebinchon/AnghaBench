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
struct sock {int sk_err; int sk_err_soft; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {void* transport_header; void* network_header; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; } ;
struct inet_sock {scalar_t__ recverr; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  void* __u16 ;
struct TYPE_4__ {int errno; } ;
struct TYPE_3__ {int type; int code; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EHOSTUNREACH ; 
 int ENOENT ; 
 int EPROTO ; 
#define  ICMP_DEST_UNREACH 131 
 int const ICMP_EXC_FRAGTIME ; 
 int const ICMP_FRAG_NEEDED ; 
 int /*<<< orphan*/  ICMP_MIB_INERRORS ; 
#define  ICMP_PARAMETERPROB 130 
 int const ICMP_PROT_UNREACH ; 
#define  ICMP_REDIRECT 129 
#define  ICMP_TIME_EXCEEDED 128 
 int const NR_ICMP_UNREACH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* icmp_err_convert ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sctp_transport*) ; 
 struct sock* FUNC6 (struct net*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,struct sctp_association**,struct sctp_transport**) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sctp_association*,struct sctp_transport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sctp_association*,struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sctp_transport*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int const) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 

int FUNC15(struct sk_buff *skb, __u32 info)
{
	const struct iphdr *iph = (const struct iphdr *)skb->data;
	const int ihlen = iph->ihl * 4;
	const int type = FUNC3(skb)->type;
	const int code = FUNC3(skb)->code;
	struct sock *sk;
	struct sctp_association *asoc = NULL;
	struct sctp_transport *transport;
	struct inet_sock *inet;
	__u16 saveip, savesctp;
	int err;
	struct net *net = FUNC2(skb->dev);

	/* Fix up skb to look at the embedded net header. */
	saveip = skb->network_header;
	savesctp = skb->transport_header;
	FUNC11(skb);
	FUNC12(skb, ihlen);
	sk = FUNC6(net, AF_INET, skb, FUNC7(skb), &asoc, &transport);
	/* Put back, the original values. */
	skb->network_header = saveip;
	skb->transport_header = savesctp;
	if (!sk) {
		FUNC1(net, ICMP_MIB_INERRORS);
		return -ENOENT;
	}
	/* Warning:  The sock lock is held.  Remember to call
	 * sctp_err_finish!
	 */

	switch (type) {
	case ICMP_PARAMETERPROB:
		err = EPROTO;
		break;
	case ICMP_DEST_UNREACH:
		if (code > NR_ICMP_UNREACH)
			goto out_unlock;

		/* PMTU discovery (RFC1191) */
		if (ICMP_FRAG_NEEDED == code) {
			FUNC8(sk, asoc, transport,
					      FUNC0(info));
			goto out_unlock;
		} else {
			if (ICMP_PROT_UNREACH == code) {
				FUNC9(sk, asoc,
							    transport);
				goto out_unlock;
			}
		}
		err = icmp_err_convert[code].errno;
		break;
	case ICMP_TIME_EXCEEDED:
		/* Ignore any time exceeded errors due to fragment reassembly
		 * timeouts.
		 */
		if (ICMP_EXC_FRAGTIME == code)
			goto out_unlock;

		err = EHOSTUNREACH;
		break;
	case ICMP_REDIRECT:
		FUNC10(sk, transport, skb);
		/* Fall through to out_unlock. */
	default:
		goto out_unlock;
	}

	inet = FUNC4(sk);
	if (!FUNC13(sk) && inet->recverr) {
		sk->sk_err = err;
		sk->sk_error_report(sk);
	} else {  /* Only an error on timeout */
		sk->sk_err_soft = err;
	}

out_unlock:
	FUNC5(sk, transport);
	return 0;
}