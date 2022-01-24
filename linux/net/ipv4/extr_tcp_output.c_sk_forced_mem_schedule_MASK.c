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
struct sock {int sk_forward_alloc; scalar_t__ sk_memcg; } ;

/* Variables and functions */
 int SK_MEM_QUANTUM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ mem_cgroup_sockets_enabled ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 

void FUNC3(struct sock *sk, int size)
{
	int amt;

	if (size <= sk->sk_forward_alloc)
		return;
	amt = FUNC1(size);
	sk->sk_forward_alloc += amt * SK_MEM_QUANTUM;
	FUNC2(sk, amt);

	if (mem_cgroup_sockets_enabled && sk->sk_memcg)
		FUNC0(sk->sk_memcg, amt);
}