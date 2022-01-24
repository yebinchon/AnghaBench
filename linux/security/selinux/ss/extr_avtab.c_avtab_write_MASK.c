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
typedef  int /*<<< orphan*/  u32 ;
struct policydb {int dummy; } ;
struct avtab_node {struct avtab_node* next; } ;
struct avtab {unsigned int nslot; struct avtab_node** htable; int /*<<< orphan*/  nel; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (struct policydb*,struct avtab_node*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,void*) ; 

int FUNC3(struct policydb *p, struct avtab *a, void *fp)
{
	unsigned int i;
	int rc = 0;
	struct avtab_node *cur;
	__le32 buf[1];

	buf[0] = FUNC1(a->nel);
	rc = FUNC2(buf, sizeof(u32), 1, fp);
	if (rc)
		return rc;

	for (i = 0; i < a->nslot; i++) {
		for (cur = a->htable[i]; cur;
		     cur = cur->next) {
			rc = FUNC0(p, cur, fp);
			if (rc)
				return rc;
		}
	}

	return rc;
}