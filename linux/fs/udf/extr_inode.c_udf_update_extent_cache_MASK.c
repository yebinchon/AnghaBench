#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {TYPE_2__ epos; int /*<<< orphan*/  lstart; } ;
struct udf_inode_info {int i_alloc_type; int /*<<< orphan*/  i_extent_cache_lock; TYPE_1__ cached_extent; } ;
struct short_ad {int dummy; } ;
struct long_ad {int dummy; } ;
struct inode {int dummy; } ;
struct extent_position {scalar_t__ bh; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
#define  ICBTAG_FLAG_AD_LONG 129 
#define  ICBTAG_FLAG_AD_SHORT 128 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct extent_position*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, loff_t estart,
				    struct extent_position *pos)
{
	struct udf_inode_info *iinfo = FUNC0(inode);

	FUNC4(&iinfo->i_extent_cache_lock);
	/* Invalidate previously cached extent */
	FUNC1(inode);
	if (pos->bh)
		FUNC2(pos->bh);
	FUNC3(&iinfo->cached_extent.epos, pos, sizeof(*pos));
	iinfo->cached_extent.lstart = estart;
	switch (iinfo->i_alloc_type) {
	case ICBTAG_FLAG_AD_SHORT:
		iinfo->cached_extent.epos.offset -= sizeof(struct short_ad);
		break;
	case ICBTAG_FLAG_AD_LONG:
		iinfo->cached_extent.epos.offset -= sizeof(struct long_ad);
		break;
	}
	FUNC5(&iinfo->i_extent_cache_lock);
}