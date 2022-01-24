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
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct smc_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4(struct sock *parent)
{
	struct smc_sock *isk = FUNC1(parent);
	__poll_t mask = 0;

	FUNC2(&isk->accept_q_lock);
	if (!FUNC0(&isk->accept_q))
		mask = EPOLLIN | EPOLLRDNORM;
	FUNC3(&isk->accept_q_lock);

	return mask;
}