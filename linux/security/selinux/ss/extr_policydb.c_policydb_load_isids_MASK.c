#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sidtab {int dummy; } ;
struct policydb {struct ocontext** ocontexts; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct ocontext {scalar_t__* sid; TYPE_1__ u; TYPE_2__* context; struct ocontext* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t OCON_ISID ; 
 scalar_t__ SECINITSID_NUM ; 
 scalar_t__ SECSID_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sidtab*) ; 
 int FUNC2 (struct sidtab*) ; 
 int FUNC3 (struct sidtab*,scalar_t__,TYPE_2__*) ; 

int FUNC4(struct policydb *p, struct sidtab *s)
{
	struct ocontext *head, *c;
	int rc;

	rc = FUNC2(s);
	if (rc) {
		FUNC0("SELinux:  out of memory on SID table init\n");
		goto out;
	}

	head = p->ocontexts[OCON_ISID];
	for (c = head; c; c = c->next) {
		rc = -EINVAL;
		if (!c->context[0].user) {
			FUNC0("SELinux:  SID %s was never defined.\n",
				c->u.name);
			FUNC1(s);
			goto out;
		}
		if (c->sid[0] == SECSID_NULL || c->sid[0] > SECINITSID_NUM) {
			FUNC0("SELinux:  Initial SID %s out of range.\n",
				c->u.name);
			FUNC1(s);
			goto out;
		}

		rc = FUNC3(s, c->sid[0], &c->context[0]);
		if (rc) {
			FUNC0("SELinux:  unable to load initial SID %s.\n",
				c->u.name);
			FUNC1(s);
			goto out;
		}
	}
	rc = 0;
out:
	return rc;
}