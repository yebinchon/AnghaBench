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
struct sock {int /*<<< orphan*/  sk_allocation; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_MEMALLOC ; 
 int /*<<< orphan*/  __GFP_MEMALLOC ; 
 int /*<<< orphan*/  memalloc_socks_key ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct sock *sk)
{
	FUNC0(sk, SOCK_MEMALLOC);
	sk->sk_allocation |= __GFP_MEMALLOC;
	FUNC1(&memalloc_socks_key);
}