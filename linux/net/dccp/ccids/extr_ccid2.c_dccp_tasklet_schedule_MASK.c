#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tasklet_struct {int /*<<< orphan*/  state; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {struct tasklet_struct dccps_xmitlet; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASKLET_STATE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (struct tasklet_struct*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct tasklet_struct *t = &FUNC1(sk)->dccps_xmitlet;

	if (!FUNC3(TASKLET_STATE_SCHED, &t->state)) {
		FUNC2(sk);
		FUNC0(t);
	}
}