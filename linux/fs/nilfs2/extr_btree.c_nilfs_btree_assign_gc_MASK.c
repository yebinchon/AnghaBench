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
struct TYPE_2__ {void* bi_blkoff; void* bi_vblocknr; } ;
union nilfs_binfo {TYPE_1__ bi_v; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_bmap*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_btree_node*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nilfs_bmap *btree,
				 struct buffer_head **bh,
				 sector_t blocknr,
				 union nilfs_binfo *binfo)
{
	struct nilfs_btree_node *node;
	__u64 key;
	int ret;

	ret = FUNC5(FUNC3(btree), (*bh)->b_blocknr,
			     blocknr);
	if (ret < 0)
		return ret;

	if (FUNC0(*bh)) {
		node = (struct nilfs_btree_node *)(*bh)->b_data;
		key = FUNC4(node, 0);
	} else
		key = FUNC2(btree, *bh);

	/* on-disk format */
	binfo->bi_v.bi_vblocknr = FUNC1((*bh)->b_blocknr);
	binfo->bi_v.bi_blkoff = FUNC1(key);

	return 0;
}