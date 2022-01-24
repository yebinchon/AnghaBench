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
struct sock {int sk_forward_alloc; } ;

/* Variables and functions */
 int SK_MEM_QUANTUM_SHIFT ; 
 int FUNC0 (struct sock*,int,int,int) ; 
 int FUNC1 (int) ; 

int FUNC2(struct sock *sk, int size, int kind)
{
	int ret, amt = FUNC1(size);

	sk->sk_forward_alloc += amt << SK_MEM_QUANTUM_SHIFT;
	ret = FUNC0(sk, size, amt, kind);
	if (!ret)
		sk->sk_forward_alloc -= amt << SK_MEM_QUANTUM_SHIFT;
	return ret;
}