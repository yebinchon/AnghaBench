#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mls_range {TYPE_1__* level; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_3__ {size_t sens; int /*<<< orphan*/  cat; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,size_t,void*) ; 

__attribute__((used)) static int FUNC6(struct mls_range *r, void *fp)
{
	__le32 buf[3];
	size_t items;
	int rc, eq;

	eq = FUNC4(&r->level[1], &r->level[0]);

	if (eq)
		items = 2;
	else
		items = 3;
	buf[0] = FUNC2(items-1);
	buf[1] = FUNC2(r->level[0].sens);
	if (!eq)
		buf[2] = FUNC2(r->level[1].sens);

	FUNC1(items > FUNC0(buf));

	rc = FUNC5(buf, sizeof(u32), items, fp);
	if (rc)
		return rc;

	rc = FUNC3(&r->level[0].cat, fp);
	if (rc)
		return rc;
	if (!eq) {
		rc = FUNC3(&r->level[1].cat, fp);
		if (rc)
			return rc;
	}

	return 0;
}