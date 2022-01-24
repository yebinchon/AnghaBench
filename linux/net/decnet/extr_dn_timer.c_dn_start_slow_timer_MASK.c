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
struct sock {int /*<<< orphan*/  sk_timer; } ;

/* Variables and functions */
 scalar_t__ SLOW_INTERVAL ; 
 int /*<<< orphan*/  dn_slow_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct sock *sk)
{
	FUNC1(&sk->sk_timer, dn_slow_timer, 0);
	FUNC0(sk, &sk->sk_timer, jiffies + SLOW_INTERVAL);
}