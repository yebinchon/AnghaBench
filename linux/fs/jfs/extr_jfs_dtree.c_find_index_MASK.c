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
typedef  int u32 ;
struct metapage {scalar_t__ data; } ;
struct jfs_inode_info {int next_index; struct dir_table_slot* i_dirtable; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dir_table_slot {int dummy; } ;
typedef  int s64 ;
struct TYPE_2__ {int l2nbperpage; } ;

/* Variables and functions */
 struct jfs_inode_info* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int L2PSIZE ; 
 int PSIZE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct metapage* FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct metapage*) ; 

__attribute__((used)) static struct dir_table_slot *FUNC7(struct inode *ip, u32 index,
					 struct metapage ** mp, s64 *lblock)
{
	struct jfs_inode_info *jfs_ip = FUNC0(ip);
	s64 blkno;
	s64 offset;
	int page_offset;
	struct dir_table_slot *slot;
	static int maxWarnings = 10;

	if (index < 2) {
		if (maxWarnings) {
			FUNC4("find_entry called with index = %d", index);
			maxWarnings--;
		}
		return NULL;
	}

	if (index >= jfs_ip->next_index) {
		FUNC4("find_entry called with index >= next_index");
		return NULL;
	}

	if (FUNC2(ip)) {
		/*
		 * Inline directory table
		 */
		*mp = NULL;
		slot = &jfs_ip->i_dirtable[index - 2];
	} else {
		offset = (index - 2) * sizeof(struct dir_table_slot);
		page_offset = offset & (PSIZE - 1);
		blkno = ((offset + 1) >> L2PSIZE) <<
		    FUNC1(ip->i_sb)->l2nbperpage;

		if (*mp && (*lblock != blkno)) {
			FUNC6(*mp);
			*mp = NULL;
		}
		if (!(*mp)) {
			*lblock = blkno;
			*mp = FUNC5(ip, blkno);
		}
		if (!(*mp)) {
			FUNC3("free_index: error reading directory table");
			return NULL;
		}

		slot =
		    (struct dir_table_slot *) ((char *) (*mp)->data +
					       page_offset);
	}
	return slot;
}