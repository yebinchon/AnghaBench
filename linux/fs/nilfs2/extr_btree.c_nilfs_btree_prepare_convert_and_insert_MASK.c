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
union nilfs_bmap_ptr_req {scalar_t__ bpr_ptr; } ;
struct nilfs_bmap_stats {scalar_t__ bs_nblocks; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 struct inode* FUNC2 (struct nilfs_bmap*) ; 
 int FUNC3 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 scalar_t__ FUNC4 (struct nilfs_bmap*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nilfs_bmap*,scalar_t__,struct buffer_head**) ; 

__attribute__((used)) static int
FUNC6(struct nilfs_bmap *btree, __u64 key,
				       union nilfs_bmap_ptr_req *dreq,
				       union nilfs_bmap_ptr_req *nreq,
				       struct buffer_head **bhp,
				       struct nilfs_bmap_stats *stats)
{
	struct buffer_head *bh;
	struct inode *dat = NULL;
	int ret;

	stats->bs_nblocks = 0;

	/* for data */
	/* cannot find near ptr */
	if (FUNC0(btree)) {
		dreq->bpr_ptr = FUNC4(btree, NULL, key);
		dat = FUNC2(btree);
	}

	ret = FUNC3(btree, dreq, dat);
	if (ret < 0)
		return ret;

	*bhp = NULL;
	stats->bs_nblocks++;
	if (nreq != NULL) {
		nreq->bpr_ptr = dreq->bpr_ptr + 1;
		ret = FUNC3(btree, nreq, dat);
		if (ret < 0)
			goto err_out_dreq;

		ret = FUNC5(btree, nreq->bpr_ptr, &bh);
		if (ret < 0)
			goto err_out_nreq;

		*bhp = bh;
		stats->bs_nblocks++;
	}

	/* success */
	return 0;

	/* error */
 err_out_nreq:
	FUNC1(btree, nreq, dat);
 err_out_dreq:
	FUNC1(btree, dreq, dat);
	stats->bs_nblocks = 0;
	return ret;

}