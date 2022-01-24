#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct sock {int sk_err; int sk_err_soft; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {void* transport_header; void* network_header; int /*<<< orphan*/  dev; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {scalar_t__ recverr; } ;
struct inet6_skb_parm {int dummy; } ;
struct inet6_dev {int dummy; } ;
typedef  void* __u16 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int ENOENT ; 
 int /*<<< orphan*/  ICMP6_MIB_INERRORS ; 
#define  ICMPV6_PARAMPROB 130 
#define  ICMPV6_PKT_TOOBIG 129 
 int ICMPV6_UNK_NEXTHDR ; 
#define  NDISC_REDIRECT 128 
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int*) ; 
 struct inet6_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sctp_transport*) ; 
 struct sock* FUNC10 (struct net*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,struct sctp_association**,struct sctp_transport**) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct sctp_association*,struct sctp_transport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sctp_association*,struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sctp_transport*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 

__attribute__((used)) static int FUNC19(struct sk_buff *skb, struct inet6_skb_parm *opt,
			u8 type, u8 code, int offset, __be32 info)
{
	struct inet6_dev *idev;
	struct sock *sk;
	struct sctp_association *asoc;
	struct sctp_transport *transport;
	struct ipv6_pinfo *np;
	__u16 saveip, savesctp;
	int err, ret = 0;
	struct net *net = FUNC1(skb->dev);

	idev = FUNC3(skb->dev);

	/* Fix up skb to look at the embedded net header. */
	saveip	 = skb->network_header;
	savesctp = skb->transport_header;
	FUNC15(skb);
	FUNC16(skb, offset);
	sk = FUNC10(net, AF_INET6, skb, FUNC11(skb), &asoc, &transport);
	/* Put back, the original pointers. */
	skb->network_header   = saveip;
	skb->transport_header = savesctp;
	if (!sk) {
		FUNC0(net, idev, ICMP6_MIB_INERRORS);
		ret = -ENOENT;
		goto out;
	}

	/* Warning:  The sock lock is held.  Remember to call
	 * sctp_err_finish!
	 */

	switch (type) {
	case ICMPV6_PKT_TOOBIG:
		if (FUNC6(sk))
			FUNC12(sk, asoc, transport, FUNC8(info));
		goto out_unlock;
	case ICMPV6_PARAMPROB:
		if (ICMPV6_UNK_NEXTHDR == code) {
			FUNC13(sk, asoc, transport);
			goto out_unlock;
		}
		break;
	case NDISC_REDIRECT:
		FUNC14(sk, transport, skb);
		goto out_unlock;
	default:
		break;
	}

	np = FUNC5(sk);
	FUNC2(type, code, &err);
	if (!FUNC17(sk) && np->recverr) {
		sk->sk_err = err;
		sk->sk_error_report(sk);
	} else {  /* Only an error on timeout */
		sk->sk_err_soft = err;
	}

out_unlock:
	FUNC9(sk, transport);
out:
	if (FUNC7(idev != NULL))
		FUNC4(idev);

	return ret;
}