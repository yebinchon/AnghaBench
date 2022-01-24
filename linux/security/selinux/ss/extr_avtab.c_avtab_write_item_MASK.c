#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct policydb {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; TYPE_3__* xperms; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct TYPE_6__ {int source_type; int target_type; int target_class; int specified; } ;
struct avtab_node {TYPE_5__ datum; TYPE_1__ key; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_7__ {int /*<<< orphan*/ * p; } ;
struct TYPE_8__ {TYPE_2__ perms; int /*<<< orphan*/  driver; int /*<<< orphan*/  specified; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int AVTAB_XPERMS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,void*) ; 

int FUNC4(struct policydb *p, struct avtab_node *cur, void *fp)
{
	__le16 buf16[4];
	__le32 buf32[FUNC0(cur->datum.u.xperms->perms.p)];
	int rc;
	unsigned int i;

	buf16[0] = FUNC1(cur->key.source_type);
	buf16[1] = FUNC1(cur->key.target_type);
	buf16[2] = FUNC1(cur->key.target_class);
	buf16[3] = FUNC1(cur->key.specified);
	rc = FUNC3(buf16, sizeof(u16), 4, fp);
	if (rc)
		return rc;

	if (cur->key.specified & AVTAB_XPERMS) {
		rc = FUNC3(&cur->datum.u.xperms->specified, sizeof(u8), 1, fp);
		if (rc)
			return rc;
		rc = FUNC3(&cur->datum.u.xperms->driver, sizeof(u8), 1, fp);
		if (rc)
			return rc;
		for (i = 0; i < FUNC0(cur->datum.u.xperms->perms.p); i++)
			buf32[i] = FUNC2(cur->datum.u.xperms->perms.p[i]);
		rc = FUNC3(buf32, sizeof(u32),
				FUNC0(cur->datum.u.xperms->perms.p), fp);
	} else {
		buf32[0] = FUNC2(cur->datum.u.data);
		rc = FUNC3(buf32, sizeof(u32), 1, fp);
	}
	if (rc)
		return rc;
	return 0;
}