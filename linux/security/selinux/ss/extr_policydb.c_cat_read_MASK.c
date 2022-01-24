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
struct policydb {int dummy; } ;
struct hashtab {int dummy; } ;
struct cat_datum {void* isalias; void* value; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,struct cat_datum*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hashtab*,char*,struct cat_datum*) ; 
 struct cat_datum* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC5 (char**,int /*<<< orphan*/ ,void*,void*) ; 

__attribute__((used)) static int FUNC6(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct cat_datum *catdatum;
	int rc;
	__le32 buf[3];
	u32 len;

	catdatum = FUNC2(sizeof(*catdatum), GFP_ATOMIC);
	if (!catdatum)
		return -ENOMEM;

	rc = FUNC4(buf, fp, sizeof buf);
	if (rc)
		goto bad;

	len = FUNC3(buf[0]);
	catdatum->value = FUNC3(buf[1]);
	catdatum->isalias = FUNC3(buf[2]);

	rc = FUNC5(&key, GFP_ATOMIC, fp, len);
	if (rc)
		goto bad;

	rc = FUNC1(h, key, catdatum);
	if (rc)
		goto bad;
	return 0;
bad:
	FUNC0(key, catdatum, NULL);
	return rc;
}