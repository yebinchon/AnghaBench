#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_xattr_value_buf {TYPE_1__* vb_xv; } ;
struct ocfs2_xa_loc {int /*<<< orphan*/  xl_entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  xr_clusters; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_xa_loc*,struct ocfs2_xattr_value_buf*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct ocfs2_xa_loc *loc)
{
	struct ocfs2_xattr_value_buf vb;

	if (FUNC2(loc->xl_entry))
		return 0;

	FUNC1(loc, &vb);
	return FUNC0(vb.vb_xv->xr_clusters);
}