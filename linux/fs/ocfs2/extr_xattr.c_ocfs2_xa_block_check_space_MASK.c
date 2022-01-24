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
struct ocfs2_xattr_info {int dummy; } ;
struct ocfs2_xa_loc {scalar_t__ xl_entry; TYPE_1__* xl_header; } ;
struct TYPE_2__ {int /*<<< orphan*/  xh_count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (struct ocfs2_xa_loc*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (struct ocfs2_xattr_info*) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_xa_loc *loc,
				      struct ocfs2_xattr_info *xi)
{
	int count = FUNC0(loc->xl_header->xh_count);
	int free_start = FUNC3(loc);
	int needed_space = FUNC5(xi);

	/*
	 * Block storage will reclaim the original entry before inserting
	 * the new value, so we only need the difference.  If the new
	 * entry is smaller than the old one, we don't need anything.
	 */
	if (loc->xl_entry) {
		/* Don't need space if we're reusing! */
		if (FUNC1(loc, xi))
			needed_space = 0;
		else
			needed_space -= FUNC4(loc->xl_entry);
	}
	if (needed_space < 0)
		needed_space = 0;
	return FUNC2(needed_space, free_start, count);
}