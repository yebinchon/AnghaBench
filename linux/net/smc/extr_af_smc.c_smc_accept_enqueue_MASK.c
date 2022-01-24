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
struct smc_sock {int /*<<< orphan*/  accept_q_lock; int /*<<< orphan*/  accept_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct smc_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sock *parent, struct sock *sk)
{
	struct smc_sock *par = FUNC2(parent);

	FUNC3(sk); /* sock_put in smc_accept_unlink () */
	FUNC4(&par->accept_q_lock);
	FUNC0(&FUNC2(sk)->accept_q, &par->accept_q);
	FUNC5(&par->accept_q_lock);
	FUNC1(parent);
}