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
typedef  int u32 ;
struct type_datum {int primary; int attribute; void* bounds; void* value; } ;
struct policydb {scalar_t__ policyvers; } ;
struct hashtab {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ POLICYDB_VERSION_BOUNDARY ; 
 int TYPEDATUM_PROPERTY_ATTRIBUTE ; 
 int TYPEDATUM_PROPERTY_PRIMARY ; 
 int FUNC0 (struct hashtab*,char*,struct type_datum*) ; 
 struct type_datum* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC4 (char**,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct type_datum*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct type_datum *typdatum;
	int rc, to_read = 3;
	__le32 buf[4];
	u32 len;

	typdatum = FUNC1(sizeof(*typdatum), GFP_KERNEL);
	if (!typdatum)
		return -ENOMEM;

	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
		to_read = 4;

	rc = FUNC3(buf, fp, sizeof(buf[0]) * to_read);
	if (rc)
		goto bad;

	len = FUNC2(buf[0]);
	typdatum->value = FUNC2(buf[1]);
	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY) {
		u32 prop = FUNC2(buf[2]);

		if (prop & TYPEDATUM_PROPERTY_PRIMARY)
			typdatum->primary = 1;
		if (prop & TYPEDATUM_PROPERTY_ATTRIBUTE)
			typdatum->attribute = 1;

		typdatum->bounds = FUNC2(buf[3]);
	} else {
		typdatum->primary = FUNC2(buf[2]);
	}

	rc = FUNC4(&key, GFP_KERNEL, fp, len);
	if (rc)
		goto bad;

	rc = FUNC0(h, key, typdatum);
	if (rc)
		goto bad;
	return 0;
bad:
	FUNC5(key, typdatum, NULL);
	return rc;
}