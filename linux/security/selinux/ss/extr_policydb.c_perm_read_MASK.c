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
struct perm_datum {void* value; } ;
struct hashtab {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct hashtab*,char*,struct perm_datum*) ; 
 struct perm_datum* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct perm_datum*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char**,int /*<<< orphan*/ ,void*,void*) ; 

__attribute__((used)) static int FUNC6(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct perm_datum *perdatum;
	int rc;
	__le32 buf[2];
	u32 len;

	perdatum = FUNC1(sizeof(*perdatum), GFP_KERNEL);
	if (!perdatum)
		return -ENOMEM;

	rc = FUNC3(buf, fp, sizeof buf);
	if (rc)
		goto bad;

	len = FUNC2(buf[0]);
	perdatum->value = FUNC2(buf[1]);

	rc = FUNC5(&key, GFP_KERNEL, fp, len);
	if (rc)
		goto bad;

	rc = FUNC0(h, key, perdatum);
	if (rc)
		goto bad;

	return 0;
bad:
	FUNC4(key, perdatum, NULL);
	return rc;
}