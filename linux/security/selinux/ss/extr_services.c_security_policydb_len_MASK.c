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
struct selinux_state {TYPE_1__* ss; } ;
struct policydb {size_t len; } ;
struct TYPE_2__ {int /*<<< orphan*/  policy_rwlock; struct policydb policydb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

size_t FUNC2(struct selinux_state *state)
{
	struct policydb *p = &state->ss->policydb;
	size_t len;

	FUNC0(&state->ss->policy_rwlock);
	len = p->len;
	FUNC1(&state->ss->policy_rwlock);

	return len;
}