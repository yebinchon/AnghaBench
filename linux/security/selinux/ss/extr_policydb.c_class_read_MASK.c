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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  table; } ;
struct policydb {scalar_t__ policyvers; TYPE_1__ p_commons; } ;
struct hashtab {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  table; void* nprim; } ;
struct class_datum {char* comkey; void* default_type; void* default_range; void* default_role; void* default_user; int /*<<< orphan*/  validatetrans; int /*<<< orphan*/  constraints; TYPE_2__ permissions; int /*<<< orphan*/  comdatum; void* value; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PERM_SYMTAB_SIZE ; 
 scalar_t__ POLICYDB_VERSION_DEFAULT_TYPE ; 
 scalar_t__ POLICYDB_VERSION_NEW_OBJECT_DEFAULTS ; 
 scalar_t__ POLICYDB_VERSION_VALIDATETRANS ; 
 int /*<<< orphan*/  FUNC0 (char*,struct class_datum*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hashtab*,char*,struct class_datum*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct class_datum* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC6 (struct policydb*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (struct policydb*,int /*<<< orphan*/ *,int,int,void*) ; 
 int FUNC9 (char**,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct class_datum *cladatum;
	__le32 buf[6];
	u32 len, len2, ncons, nel;
	int i, rc;

	cladatum = FUNC3(sizeof(*cladatum), GFP_KERNEL);
	if (!cladatum)
		return -ENOMEM;

	rc = FUNC5(buf, fp, sizeof(u32)*6);
	if (rc)
		goto bad;

	len = FUNC4(buf[0]);
	len2 = FUNC4(buf[1]);
	cladatum->value = FUNC4(buf[2]);

	rc = FUNC10(&cladatum->permissions, PERM_SYMTAB_SIZE);
	if (rc)
		goto bad;
	cladatum->permissions.nprim = FUNC4(buf[3]);
	nel = FUNC4(buf[4]);

	ncons = FUNC4(buf[5]);

	rc = FUNC9(&key, GFP_KERNEL, fp, len);
	if (rc)
		goto bad;

	if (len2) {
		rc = FUNC9(&cladatum->comkey, GFP_KERNEL, fp, len2);
		if (rc)
			goto bad;

		rc = -EINVAL;
		cladatum->comdatum = FUNC2(p->p_commons.table, cladatum->comkey);
		if (!cladatum->comdatum) {
			FUNC7("SELinux:  unknown common %s\n",
			       cladatum->comkey);
			goto bad;
		}
	}
	for (i = 0; i < nel; i++) {
		rc = FUNC6(p, cladatum->permissions.table, fp);
		if (rc)
			goto bad;
	}

	rc = FUNC8(p, &cladatum->constraints, ncons, 0, fp);
	if (rc)
		goto bad;

	if (p->policyvers >= POLICYDB_VERSION_VALIDATETRANS) {
		/* grab the validatetrans rules */
		rc = FUNC5(buf, fp, sizeof(u32));
		if (rc)
			goto bad;
		ncons = FUNC4(buf[0]);
		rc = FUNC8(p, &cladatum->validatetrans,
				ncons, 1, fp);
		if (rc)
			goto bad;
	}

	if (p->policyvers >= POLICYDB_VERSION_NEW_OBJECT_DEFAULTS) {
		rc = FUNC5(buf, fp, sizeof(u32) * 3);
		if (rc)
			goto bad;

		cladatum->default_user = FUNC4(buf[0]);
		cladatum->default_role = FUNC4(buf[1]);
		cladatum->default_range = FUNC4(buf[2]);
	}

	if (p->policyvers >= POLICYDB_VERSION_DEFAULT_TYPE) {
		rc = FUNC5(buf, fp, sizeof(u32) * 1);
		if (rc)
			goto bad;
		cladatum->default_type = FUNC4(buf[0]);
	}

	rc = FUNC1(h, key, cladatum);
	if (rc)
		goto bad;

	return 0;
bad:
	FUNC0(key, cladatum, NULL);
	return rc;
}