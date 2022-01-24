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
struct nilfs_btree_path {int /*<<< orphan*/  bp_bh; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct inode*) ; 

__attribute__((used)) static void FUNC2(struct nilfs_bmap *btree,
					   struct nilfs_btree_path *path,
					   int minlevel, int maxlevel,
					   struct buffer_head *bh,
					   struct inode *dat)
{
	int level;

	if (!FUNC0(path[minlevel].bp_bh))
		FUNC1(btree, path, minlevel, dat);

	for (level = minlevel + 1; level <= maxlevel; level++)
		FUNC1(btree, path, level, dat);
}