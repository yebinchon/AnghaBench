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
struct TYPE_2__ {int lstart; int /*<<< orphan*/  epos; } ;
struct udf_inode_info {int /*<<< orphan*/  i_extent_cache_lock; TYPE_1__ cached_extent; } ;
struct inode {int dummy; } ;
struct extent_position {scalar_t__ bh; } ;
typedef  int loff_t ;

/* Variables and functions */
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_position*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, loff_t bcount,
				 loff_t *lbcount, struct extent_position *pos)
{
	struct udf_inode_info *iinfo = FUNC0(inode);
	int ret = 0;

	FUNC3(&iinfo->i_extent_cache_lock);
	if ((iinfo->cached_extent.lstart <= bcount) &&
	    (iinfo->cached_extent.lstart != -1)) {
		/* Cache hit */
		*lbcount = iinfo->cached_extent.lstart;
		FUNC2(pos, &iinfo->cached_extent.epos,
		       sizeof(struct extent_position));
		if (pos->bh)
			FUNC1(pos->bh);
		ret = 1;
	}
	FUNC4(&iinfo->i_extent_cache_lock);
	return ret;
}