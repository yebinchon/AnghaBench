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
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sock {int dummy; } ;
struct sctp_cmsgs {int dummy; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_name; } ;

/* Variables and functions */
 union sctp_addr* FUNC0 (int) ; 
 int /*<<< orphan*/  UDP_HIGH_BANDWIDTH ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sock*,union sctp_addr*,int) ; 

__attribute__((used)) static union sctp_addr *FUNC3(struct sock *sk,
					       const struct msghdr *msg,
					       struct sctp_cmsgs *cmsgs)
{
	union sctp_addr *daddr = NULL;
	int err;

	if (!FUNC1(sk, UDP_HIGH_BANDWIDTH) && msg->msg_name) {
		int len = msg->msg_namelen;

		if (len > sizeof(*daddr))
			len = sizeof(*daddr);

		daddr = (union sctp_addr *)msg->msg_name;

		err = FUNC2(sk, daddr, len);
		if (err)
			return FUNC0(err);
	}

	return daddr;
}