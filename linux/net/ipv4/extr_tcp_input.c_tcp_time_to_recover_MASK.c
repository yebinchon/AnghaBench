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
struct tcp_sock {scalar_t__ reordering; scalar_t__ lost_out; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static bool FUNC3(struct sock *sk, int flag)
{
	struct tcp_sock *tp = FUNC2(sk);

	/* Trick#1: The loss is proven. */
	if (tp->lost_out)
		return true;

	/* Not-A-Trick#2 : Classic rule... */
	if (!FUNC1(sk) && FUNC0(tp) > tp->reordering)
		return true;

	return false;
}