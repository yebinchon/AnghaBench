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
typedef  void* u32 ;
struct user_datum {int /*<<< orphan*/  dfltlevel; int /*<<< orphan*/  range; int /*<<< orphan*/  roles; void* bounds; void* value; } ;
struct policydb {scalar_t__ policyvers; } ;
struct hashtab {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ POLICYDB_VERSION_BOUNDARY ; 
 scalar_t__ POLICYDB_VERSION_MLS ; 
 int FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (struct hashtab*,char*,struct user_datum*) ; 
 struct user_datum* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int FUNC6 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC7 (char**,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct user_datum*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct user_datum *usrdatum;
	int rc, to_read = 2;
	__le32 buf[3];
	u32 len;

	usrdatum = FUNC2(sizeof(*usrdatum), GFP_KERNEL);
	if (!usrdatum)
		return -ENOMEM;

	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
		to_read = 3;

	rc = FUNC6(buf, fp, sizeof(buf[0]) * to_read);
	if (rc)
		goto bad;

	len = FUNC3(buf[0]);
	usrdatum->value = FUNC3(buf[1]);
	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
		usrdatum->bounds = FUNC3(buf[2]);

	rc = FUNC7(&key, GFP_KERNEL, fp, len);
	if (rc)
		goto bad;

	rc = FUNC0(&usrdatum->roles, fp);
	if (rc)
		goto bad;

	if (p->policyvers >= POLICYDB_VERSION_MLS) {
		rc = FUNC5(&usrdatum->range, fp);
		if (rc)
			goto bad;
		rc = FUNC4(&usrdatum->dfltlevel, fp);
		if (rc)
			goto bad;
	}

	rc = FUNC1(h, key, usrdatum);
	if (rc)
		goto bad;
	return 0;
bad:
	FUNC8(key, usrdatum, NULL);
	return rc;
}