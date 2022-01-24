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
struct role_allow {size_t role; size_t new_role; struct role_allow* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,void*) ; 

__attribute__((used)) static int FUNC2(struct role_allow *r, void *fp)
{
	struct role_allow *ra;
	u32 buf[2];
	size_t nel;
	int rc;

	nel = 0;
	for (ra = r; ra; ra = ra->next)
		nel++;
	buf[0] = FUNC0(nel);
	rc = FUNC1(buf, sizeof(u32), 1, fp);
	if (rc)
		return rc;
	for (ra = r; ra; ra = ra->next) {
		buf[0] = FUNC0(ra->role);
		buf[1] = FUNC0(ra->new_role);
		rc = FUNC1(buf, sizeof(u32), 2, fp);
		if (rc)
			return rc;
	}
	return 0;
}