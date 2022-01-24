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
struct mountpoint {int /*<<< orphan*/  m_hash; int /*<<< orphan*/  m_list; struct dentry* m_dentry; int /*<<< orphan*/  m_count; } ;
struct list_head {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DCACHE_MOUNTED ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mountpoint*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mountpoint *mp, struct list_head *list)
{
	if (!--mp->m_count) {
		struct dentry *dentry = mp->m_dentry;
		FUNC0(!FUNC3(&mp->m_list));
		FUNC5(&dentry->d_lock);
		dentry->d_flags &= ~DCACHE_MOUNTED;
		FUNC6(&dentry->d_lock);
		FUNC1(dentry, list);
		FUNC2(&mp->m_hash);
		FUNC4(mp);
	}
}