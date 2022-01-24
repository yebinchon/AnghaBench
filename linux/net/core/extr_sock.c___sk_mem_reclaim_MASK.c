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
 int /*<<< orphan*/  FUNC0 (struct sock*,int) ; 

void FUNC1(struct sock *sk, int amount)
{
	amount >>= SK_MEM_QUANTUM_SHIFT;
	sk->sk_forward_alloc -= amount << SK_MEM_QUANTUM_SHIFT;
	FUNC0(sk, amount);
}