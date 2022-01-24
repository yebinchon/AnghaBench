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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  udf_pblk_t ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct extent_position {int offset; int /*<<< orphan*/  bh; struct kernel_lb_addr block; } ;
struct allocExtDesc {int dummy; } ;
typedef  int int8_t ;

/* Variables and functions */
 int EXT_NEXT_EXTENT_ALLOCDECS ; 
 unsigned int UDF_MAX_INDIR_EXTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int8_t FUNC6(struct inode *inode, struct extent_position *epos,
		     struct kernel_lb_addr *eloc, uint32_t *elen, int inc)
{
	int8_t etype;
	unsigned int indirections = 0;

	while ((etype = FUNC1(inode, epos, eloc, elen, inc)) ==
	       (EXT_NEXT_EXTENT_ALLOCDECS >> 30)) {
		udf_pblk_t block;

		if (++indirections > UDF_MAX_INDIR_EXTS) {
			FUNC3(inode->i_sb,
				"too many indirect extents in inode %lu\n",
				inode->i_ino);
			return -1;
		}

		epos->block = *eloc;
		epos->offset = sizeof(struct allocExtDesc);
		FUNC0(epos->bh);
		block = FUNC4(inode->i_sb, &epos->block, 0);
		epos->bh = FUNC5(inode->i_sb, block);
		if (!epos->bh) {
			FUNC2("reading block %u failed!\n", block);
			return -1;
		}
	}

	return etype;
}