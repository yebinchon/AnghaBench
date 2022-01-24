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
struct policydb {scalar_t__ policyvers; } ;
struct context {int /*<<< orphan*/  range; void* type; void* role; void* user; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ POLICYDB_VERSION_MLS ; 
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct policydb*,struct context*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct context *c,
				     struct policydb *p,
				     void *fp)
{
	__le32 buf[3];
	int rc;

	rc = FUNC3(buf, fp, sizeof buf);
	if (rc) {
		FUNC5("SELinux: context truncated\n");
		goto out;
	}
	c->user = FUNC1(buf[0]);
	c->role = FUNC1(buf[1]);
	c->type = FUNC1(buf[2]);
	if (p->policyvers >= POLICYDB_VERSION_MLS) {
		rc = FUNC2(&c->range, fp);
		if (rc) {
			FUNC5("SELinux: error reading MLS range of context\n");
			goto out;
		}
	}

	rc = -EINVAL;
	if (!FUNC4(p, c)) {
		FUNC5("SELinux:  invalid security context\n");
		FUNC0(c);
		goto out;
	}
	rc = 0;
out:
	return rc;
}