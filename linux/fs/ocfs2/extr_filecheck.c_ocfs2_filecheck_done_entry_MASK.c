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
struct ocfs2_filecheck_sysfs_entry {TYPE_1__* fs_fcheck; } ;
struct ocfs2_filecheck_entry {int fe_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  fc_lock; int /*<<< orphan*/  fc_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct ocfs2_filecheck_sysfs_entry *ent,
			   struct ocfs2_filecheck_entry *entry)
{
	FUNC0(&ent->fs_fcheck->fc_lock);
	entry->fe_done = 1;
	ent->fs_fcheck->fc_done++;
	FUNC1(&ent->fs_fcheck->fc_lock);
}