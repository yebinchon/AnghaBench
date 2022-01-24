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
struct sock {int dummy; } ;
struct nr_sock {scalar_t__ t1; int /*<<< orphan*/  t1timer; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 struct nr_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC2(struct sock *sk)
{
	struct nr_sock *nr = FUNC0(sk);

	FUNC1(sk, &nr->t1timer, jiffies + nr->t1);
}