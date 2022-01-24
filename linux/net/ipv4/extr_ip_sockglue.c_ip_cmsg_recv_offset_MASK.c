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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct inet_sock {unsigned int cmsg_flags; } ;

/* Variables and functions */
 unsigned int IP_CMSG_CHECKSUM ; 
 unsigned int IP_CMSG_ORIGDSTADDR ; 
 unsigned int IP_CMSG_PASSSEC ; 
 unsigned int IP_CMSG_PKTINFO ; 
 unsigned int IP_CMSG_RECVFRAGSIZE ; 
 unsigned int IP_CMSG_RECVOPTS ; 
 unsigned int IP_CMSG_RETOPTS ; 
 unsigned int IP_CMSG_TOS ; 
 unsigned int IP_CMSG_TTL ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

void FUNC11(struct msghdr *msg, struct sock *sk,
			 struct sk_buff *skb, int tlen, int offset)
{
	struct inet_sock *inet = FUNC0(sk);
	unsigned int flags = inet->cmsg_flags;

	/* Ordered by supposed usage frequency */
	if (flags & IP_CMSG_PKTINFO) {
		FUNC5(msg, skb);

		flags &= ~IP_CMSG_PKTINFO;
		if (!flags)
			return;
	}

	if (flags & IP_CMSG_TTL) {
		FUNC9(msg, skb);

		flags &= ~IP_CMSG_TTL;
		if (!flags)
			return;
	}

	if (flags & IP_CMSG_TOS) {
		FUNC8(msg, skb);

		flags &= ~IP_CMSG_TOS;
		if (!flags)
			return;
	}

	if (flags & IP_CMSG_RECVOPTS) {
		FUNC4(msg, skb);

		flags &= ~IP_CMSG_RECVOPTS;
		if (!flags)
			return;
	}

	if (flags & IP_CMSG_RETOPTS) {
		FUNC6(FUNC10(sk), msg, skb);

		flags &= ~IP_CMSG_RETOPTS;
		if (!flags)
			return;
	}

	if (flags & IP_CMSG_PASSSEC) {
		FUNC7(msg, skb);

		flags &= ~IP_CMSG_PASSSEC;
		if (!flags)
			return;
	}

	if (flags & IP_CMSG_ORIGDSTADDR) {
		FUNC2(msg, skb);

		flags &= ~IP_CMSG_ORIGDSTADDR;
		if (!flags)
			return;
	}

	if (flags & IP_CMSG_CHECKSUM)
		FUNC1(msg, skb, tlen, offset);

	if (flags & IP_CMSG_RECVFRAGSIZE)
		FUNC3(msg, skb);
}