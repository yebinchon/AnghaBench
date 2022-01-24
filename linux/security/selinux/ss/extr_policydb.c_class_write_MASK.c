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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t u32 ;
struct policydb {scalar_t__ policyvers; } ;
struct policy_data {struct policydb* p; void* fp; } ;
struct constraint_node {struct constraint_node* next; } ;
struct TYPE_3__ {size_t nprim; TYPE_2__* table; } ;
struct class_datum {char* comkey; size_t value; size_t default_user; size_t default_role; size_t default_range; size_t default_type; struct constraint_node* validatetrans; struct constraint_node* constraints; TYPE_1__ permissions; } ;
typedef  char __le32 ;
struct TYPE_4__ {size_t nel; } ;

/* Variables and functions */
 scalar_t__ POLICYDB_VERSION_DEFAULT_TYPE ; 
 scalar_t__ POLICYDB_VERSION_NEW_OBJECT_DEFAULTS ; 
 char FUNC0 (size_t) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  perm_write ; 
 int FUNC2 (char*,int,int,void*) ; 
 size_t FUNC3 (char*) ; 
 int FUNC4 (struct policydb*,struct constraint_node*,void*) ; 

__attribute__((used)) static int FUNC5(void *vkey, void *datum, void *ptr)
{
	char *key = vkey;
	struct class_datum *cladatum = datum;
	struct policy_data *pd = ptr;
	void *fp = pd->fp;
	struct policydb *p = pd->p;
	struct constraint_node *c;
	__le32 buf[6];
	u32 ncons;
	size_t len, len2;
	int rc;

	len = FUNC3(key);
	if (cladatum->comkey)
		len2 = FUNC3(cladatum->comkey);
	else
		len2 = 0;

	ncons = 0;
	for (c = cladatum->constraints; c; c = c->next)
		ncons++;

	buf[0] = FUNC0(len);
	buf[1] = FUNC0(len2);
	buf[2] = FUNC0(cladatum->value);
	buf[3] = FUNC0(cladatum->permissions.nprim);
	if (cladatum->permissions.table)
		buf[4] = FUNC0(cladatum->permissions.table->nel);
	else
		buf[4] = 0;
	buf[5] = FUNC0(ncons);
	rc = FUNC2(buf, sizeof(u32), 6, fp);
	if (rc)
		return rc;

	rc = FUNC2(key, 1, len, fp);
	if (rc)
		return rc;

	if (cladatum->comkey) {
		rc = FUNC2(cladatum->comkey, 1, len2, fp);
		if (rc)
			return rc;
	}

	rc = FUNC1(cladatum->permissions.table, perm_write, fp);
	if (rc)
		return rc;

	rc = FUNC4(p, cladatum->constraints, fp);
	if (rc)
		return rc;

	/* write out the validatetrans rule */
	ncons = 0;
	for (c = cladatum->validatetrans; c; c = c->next)
		ncons++;

	buf[0] = FUNC0(ncons);
	rc = FUNC2(buf, sizeof(u32), 1, fp);
	if (rc)
		return rc;

	rc = FUNC4(p, cladatum->validatetrans, fp);
	if (rc)
		return rc;

	if (p->policyvers >= POLICYDB_VERSION_NEW_OBJECT_DEFAULTS) {
		buf[0] = FUNC0(cladatum->default_user);
		buf[1] = FUNC0(cladatum->default_role);
		buf[2] = FUNC0(cladatum->default_range);

		rc = FUNC2(buf, sizeof(uint32_t), 3, fp);
		if (rc)
			return rc;
	}

	if (p->policyvers >= POLICYDB_VERSION_DEFAULT_TYPE) {
		buf[0] = FUNC0(cladatum->default_type);
		rc = FUNC2(buf, sizeof(uint32_t), 1, fp);
		if (rc)
			return rc;
	}

	return 0;
}