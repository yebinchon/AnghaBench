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
typedef  int u32 ;
struct policydb {int dummy; } ;
struct hashtab {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  table; void* nprim; } ;
struct common_datum {TYPE_1__ permissions; void* value; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PERM_SYMTAB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct common_datum*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hashtab*,char*,struct common_datum*) ; 
 struct common_datum* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC5 (struct policydb*,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (char**,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct common_datum *comdatum;
	__le32 buf[4];
	u32 len, nel;
	int i, rc;

	comdatum = FUNC2(sizeof(*comdatum), GFP_KERNEL);
	if (!comdatum)
		return -ENOMEM;

	rc = FUNC4(buf, fp, sizeof buf);
	if (rc)
		goto bad;

	len = FUNC3(buf[0]);
	comdatum->value = FUNC3(buf[1]);

	rc = FUNC7(&comdatum->permissions, PERM_SYMTAB_SIZE);
	if (rc)
		goto bad;
	comdatum->permissions.nprim = FUNC3(buf[2]);
	nel = FUNC3(buf[3]);

	rc = FUNC6(&key, GFP_KERNEL, fp, len);
	if (rc)
		goto bad;

	for (i = 0; i < nel; i++) {
		rc = FUNC5(p, comdatum->permissions.table, fp);
		if (rc)
			goto bad;
	}

	rc = FUNC1(h, key, comdatum);
	if (rc)
		goto bad;
	return 0;
bad:
	FUNC0(key, comdatum, NULL);
	return rc;
}