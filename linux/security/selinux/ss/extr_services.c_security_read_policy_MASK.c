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
struct selinux_state {TYPE_1__* ss; int /*<<< orphan*/  initialized; } ;
struct policydb {int dummy; } ;
struct policy_file {size_t len; void* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  policy_rwlock; struct policydb policydb; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (struct policydb*,struct policy_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (struct selinux_state*) ; 
 void* FUNC4 (size_t) ; 

int FUNC5(struct selinux_state *state,
			 void **data, size_t *len)
{
	struct policydb *policydb = &state->ss->policydb;
	int rc;
	struct policy_file fp;

	if (!state->initialized)
		return -EINVAL;

	*len = FUNC3(state);

	*data = FUNC4(*len);
	if (!*data)
		return -ENOMEM;

	fp.data = *data;
	fp.len = *len;

	FUNC1(&state->ss->policy_rwlock);
	rc = FUNC0(policydb, &fp);
	FUNC2(&state->ss->policy_rwlock);

	if (rc)
		return rc;

	*len = (unsigned long)fp.data - (unsigned long)*data;
	return 0;

}