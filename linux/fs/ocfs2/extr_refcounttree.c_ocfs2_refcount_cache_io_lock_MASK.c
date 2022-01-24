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
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_io_mutex; } ;
struct ocfs2_caching_info {int dummy; } ;

/* Variables and functions */
 struct ocfs2_refcount_tree* FUNC0 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ocfs2_caching_info *ci)
{
	struct ocfs2_refcount_tree *rf = FUNC0(ci);

	FUNC1(&rf->rf_io_mutex);
}