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
struct sockaddr_dn {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_allocation; } ;
struct dn_scp {int state; } ;

/* Variables and functions */
#define  DN_CC 132 
#define  DN_CI 131 
#define  DN_CR 130 
#define  DN_O 129 
#define  DN_RUN 128 
 struct dn_scp* FUNC0 (struct sock*) ; 
 int EINVAL ; 
 int FUNC1 (struct sock*,struct sockaddr_dn*,int,long*,int) ; 
 int FUNC2 (struct sock*,long*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sock*,long*) ; 

__attribute__((used)) static inline int FUNC4(struct sock *sk, struct sockaddr_dn *addr, int addrlen, long *timeo, int flags)
{
	struct dn_scp *scp = FUNC0(sk);

	switch (scp->state) {
	case DN_RUN:
		return 0;
	case DN_CR:
		return FUNC2(sk, timeo, sk->sk_allocation);
	case DN_CI:
	case DN_CC:
		return FUNC3(sk, timeo);
	case DN_O:
		return FUNC1(sk, addr, addrlen, timeo, flags);
	}

	return -EINVAL;
}