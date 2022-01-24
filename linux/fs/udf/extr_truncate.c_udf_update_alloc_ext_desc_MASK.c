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
typedef  scalar_t__ u32 ;
struct udf_sb_info {int s_udfrev; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct extent_position {TYPE_1__* bh; } ;
struct allocExtDesc {int /*<<< orphan*/  lengthAllocDescs; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDF_FLAG_STRICT ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct udf_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct inode *inode,
				      struct extent_position *epos,
				      u32 lenalloc)
{
	struct super_block *sb = inode->i_sb;
	struct udf_sb_info *sbi = FUNC1(sb);

	struct allocExtDesc *aed = (struct allocExtDesc *) (epos->bh->b_data);
	int len = sizeof(struct allocExtDesc);

	aed->lengthAllocDescs =	FUNC2(lenalloc);
	if (!FUNC0(sb, UDF_FLAG_STRICT) || sbi->s_udfrev >= 0x0201)
		len += lenalloc;

	FUNC4(epos->bh->b_data, len);
	FUNC3(epos->bh, inode);
}