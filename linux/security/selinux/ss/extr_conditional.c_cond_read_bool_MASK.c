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
struct policydb {int dummy; } ;
struct hashtab {int dummy; } ;
struct cond_bool_datum {void* state; void* value; } ;
typedef  char __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cond_bool_datum*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct cond_bool_datum*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hashtab*,char*,struct cond_bool_datum*) ; 
 char* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 struct cond_bool_datum* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (char) ; 
 int FUNC6 (char*,void*,size_t) ; 

int FUNC7(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct cond_bool_datum *booldatum;
	__le32 buf[3];
	u32 len;
	int rc;

	booldatum = FUNC4(sizeof(*booldatum), GFP_KERNEL);
	if (!booldatum)
		return -ENOMEM;

	rc = FUNC6(buf, fp, sizeof buf);
	if (rc)
		goto err;

	booldatum->value = FUNC5(buf[0]);
	booldatum->state = FUNC5(buf[1]);

	rc = -EINVAL;
	if (!FUNC0(booldatum))
		goto err;

	len = FUNC5(buf[2]);
	if (((len == 0) || (len == (u32)-1)))
		goto err;

	rc = -ENOMEM;
	key = FUNC3(len + 1, GFP_KERNEL);
	if (!key)
		goto err;
	rc = FUNC6(key, fp, len);
	if (rc)
		goto err;
	key[len] = '\0';
	rc = FUNC2(h, key, booldatum);
	if (rc)
		goto err;

	return 0;
err:
	FUNC1(key, booldatum, NULL);
	return rc;
}