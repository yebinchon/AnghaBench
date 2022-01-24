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
typedef  int /*<<< orphan*/  u32 ;
struct role_datum {size_t value; size_t bounds; int /*<<< orphan*/  types; int /*<<< orphan*/  dominates; } ;
struct policydb {scalar_t__ policyvers; } ;
struct policy_data {struct policydb* p; void* fp; } ;
typedef  char __le32 ;

/* Variables and functions */
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ POLICYDB_VERSION_BOUNDARY ; 
 char FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int FUNC4 (char*,int,size_t,void*) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(void *vkey, void *datum, void *ptr)
{
	char *key = vkey;
	struct role_datum *role = datum;
	struct policy_data *pd = ptr;
	void *fp = pd->fp;
	struct policydb *p = pd->p;
	__le32 buf[3];
	size_t items, len;
	int rc;

	len = FUNC5(key);
	items = 0;
	buf[items++] = FUNC2(len);
	buf[items++] = FUNC2(role->value);
	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
		buf[items++] = FUNC2(role->bounds);

	FUNC1(items > FUNC0(buf));

	rc = FUNC4(buf, sizeof(u32), items, fp);
	if (rc)
		return rc;

	rc = FUNC4(key, 1, len, fp);
	if (rc)
		return rc;

	rc = FUNC3(&role->dominates, fp);
	if (rc)
		return rc;

	rc = FUNC3(&role->types, fp);
	if (rc)
		return rc;

	return 0;
}