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
struct sock {int /*<<< orphan*/  sk_omem_alloc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int sysctl_optmem_max ; 

__attribute__((used)) static int FUNC2(struct sock *sk, unsigned int size)
{
	/* same check as in sock_kmalloc() */
	if (size <= sysctl_optmem_max &&
	    FUNC1(&sk->sk_omem_alloc) + size < sysctl_optmem_max) {
		FUNC0(size, &sk->sk_omem_alloc);
		return 0;
	}

	return -ENOMEM;
}