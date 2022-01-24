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
struct sock {int dummy; } ;
struct raw6_sock {int checksum; int offset; } ;
struct TYPE_2__ {int inet_num; } ;

/* Variables and functions */
#define  IPPROTO_ICMPV6 129 
#define  IPPROTO_MH 128 
 TYPE_1__* FUNC0 (struct sock*) ; 
 struct raw6_sock* FUNC1 (struct sock*) ; 

__attribute__((used)) static int FUNC2(struct sock *sk)
{
	struct raw6_sock *rp = FUNC1(sk);

	switch (FUNC0(sk)->inet_num) {
	case IPPROTO_ICMPV6:
		rp->checksum = 1;
		rp->offset   = 2;
		break;
	case IPPROTO_MH:
		rp->checksum = 1;
		rp->offset   = 4;
		break;
	default:
		break;
	}
	return 0;
}