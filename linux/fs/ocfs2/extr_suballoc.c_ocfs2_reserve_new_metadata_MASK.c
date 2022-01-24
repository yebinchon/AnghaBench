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
struct ocfs2_super {int dummy; } ;
struct ocfs2_extent_list {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_extent_list*) ; 
 int FUNC1 (struct ocfs2_super*,int /*<<< orphan*/ ,struct ocfs2_alloc_context**) ; 

int FUNC2(struct ocfs2_super *osb,
			       struct ocfs2_extent_list *root_el,
			       struct ocfs2_alloc_context **ac)
{
	return FUNC1(osb,
					FUNC0(root_el),
					ac);
}