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
typedef  scalar_t__ u32 ;
struct policydb {int dummy; } ;
struct avtab {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (struct avtab*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct avtab*) ; 
 int /*<<< orphan*/  avtab_insertf ; 
 int FUNC2 (struct avtab*,void*,struct policydb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct avtab *a, void *fp, struct policydb *pol)
{
	int rc;
	__le32 buf[1];
	u32 nel, i;


	rc = FUNC4(buf, fp, sizeof(u32));
	if (rc < 0) {
		FUNC5("SELinux: avtab: truncated table\n");
		goto bad;
	}
	nel = FUNC3(buf[0]);
	if (!nel) {
		FUNC5("SELinux: avtab: table is empty\n");
		rc = -EINVAL;
		goto bad;
	}

	rc = FUNC0(a, nel);
	if (rc)
		goto bad;

	for (i = 0; i < nel; i++) {
		rc = FUNC2(a, fp, pol, avtab_insertf, NULL);
		if (rc) {
			if (rc == -ENOMEM)
				FUNC5("SELinux: avtab: out of memory\n");
			else if (rc == -EEXIST)
				FUNC5("SELinux: avtab: duplicate entry\n");

			goto bad;
		}
	}

	rc = 0;
out:
	return rc;

bad:
	FUNC1(a);
	goto out;
}