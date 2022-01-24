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
struct super_block {int dummy; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_lock; struct super_block* rf_sb; int /*<<< orphan*/  rf_io_mutex; int /*<<< orphan*/  rf_ci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocfs2_refcount_caching_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ocfs2_refcount_tree *new,
					       struct super_block *sb)
{
	FUNC1(&new->rf_ci, &ocfs2_refcount_caching_ops);
	FUNC0(&new->rf_io_mutex);
	new->rf_sb = sb;
	FUNC2(&new->rf_lock);
}