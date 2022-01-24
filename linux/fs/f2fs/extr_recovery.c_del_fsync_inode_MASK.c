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
struct fsync_inode_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsync_entry_slab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fsync_inode_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fsync_inode_entry *entry, int drop)
{
	if (drop) {
		/* inode should not be recovered, drop it */
		FUNC0(entry->inode);
	}
	FUNC1(entry->inode);
	FUNC3(&entry->list);
	FUNC2(fsync_entry_slab, entry);
}