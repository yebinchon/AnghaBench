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
typedef  size_t u32 ;
struct type_datum {size_t value; size_t primary; size_t bounds; scalar_t__ attribute; } ;
struct policydb {scalar_t__ policyvers; } ;
struct policy_data {void* fp; struct policydb* p; } ;
typedef  char __le32 ;

/* Variables and functions */
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ POLICYDB_VERSION_BOUNDARY ; 
 size_t TYPEDATUM_PROPERTY_ATTRIBUTE ; 
 size_t TYPEDATUM_PROPERTY_PRIMARY ; 
 char FUNC2 (size_t) ; 
 int FUNC3 (char*,int,size_t,void*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(void *vkey, void *datum, void *ptr)
{
	char *key = vkey;
	struct type_datum *typdatum = datum;
	struct policy_data *pd = ptr;
	struct policydb *p = pd->p;
	void *fp = pd->fp;
	__le32 buf[4];
	int rc;
	size_t items, len;

	len = FUNC4(key);
	items = 0;
	buf[items++] = FUNC2(len);
	buf[items++] = FUNC2(typdatum->value);
	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY) {
		u32 properties = 0;

		if (typdatum->primary)
			properties |= TYPEDATUM_PROPERTY_PRIMARY;

		if (typdatum->attribute)
			properties |= TYPEDATUM_PROPERTY_ATTRIBUTE;

		buf[items++] = FUNC2(properties);
		buf[items++] = FUNC2(typdatum->bounds);
	} else {
		buf[items++] = FUNC2(typdatum->primary);
	}
	FUNC1(items > FUNC0(buf));
	rc = FUNC3(buf, sizeof(u32), items, fp);
	if (rc)
		return rc;

	rc = FUNC3(key, 1, len, fp);
	if (rc)
		return rc;

	return 0;
}