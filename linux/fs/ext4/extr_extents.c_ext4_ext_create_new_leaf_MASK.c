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
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {TYPE_1__* p_hdr; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
struct TYPE_2__ {scalar_t__ eh_entries; scalar_t__ eh_max; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC1 (struct ext4_ext_path*) ; 
 int FUNC2 (struct ext4_ext_path*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,unsigned int,struct ext4_ext_path*,struct ext4_extent*,int) ; 
 struct ext4_ext_path* FUNC5 (struct inode*,int /*<<< orphan*/ ,struct ext4_ext_path**,unsigned int) ; 
 int FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(handle_t *handle, struct inode *inode,
				    unsigned int mb_flags,
				    unsigned int gb_flags,
				    struct ext4_ext_path **ppath,
				    struct ext4_extent *newext)
{
	struct ext4_ext_path *path = *ppath;
	struct ext4_ext_path *curp;
	int depth, i, err = 0;

repeat:
	i = depth = FUNC6(inode);

	/* walk up to the tree and look for free index entry */
	curp = path + depth;
	while (i > 0 && !FUNC0(curp)) {
		i--;
		curp--;
	}

	/* we use already allocated block for index block,
	 * so subsequent data blocks should be contiguous */
	if (FUNC0(curp)) {
		/* if we found index with free entry, then use that
		 * entry: create all needed subtree and add new leaf */
		err = FUNC4(handle, inode, mb_flags, path, newext, i);
		if (err)
			goto out;

		/* refill path */
		path = FUNC5(inode,
				    (ext4_lblk_t)FUNC7(newext->ee_block),
				    ppath, gb_flags);
		if (FUNC1(path))
			err = FUNC2(path);
	} else {
		/* tree is full, time to grow in depth */
		err = FUNC3(handle, inode, mb_flags);
		if (err)
			goto out;

		/* refill path */
		path = FUNC5(inode,
				   (ext4_lblk_t)FUNC7(newext->ee_block),
				    ppath, gb_flags);
		if (FUNC1(path)) {
			err = FUNC2(path);
			goto out;
		}

		/*
		 * only first (depth 0 -> 1) produces free space;
		 * in all other cases we have to split the grown tree
		 */
		depth = FUNC6(inode);
		if (path[depth].p_hdr->eh_entries == path[depth].p_hdr->eh_max) {
			/* now we need to split */
			goto repeat;
		}
	}

out:
	return err;
}