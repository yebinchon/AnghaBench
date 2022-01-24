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
typedef  scalar_t__ uint16_t ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int logicalBlockNum; int partitionReferenceNum; } ;
struct fileSetDesc {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int s_partition; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ TAG_IDENT_FSD ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (struct super_block*,struct fileSetDesc*,struct kernel_lb_addr*) ; 
 struct buffer_head* FUNC4 (struct super_block*,struct kernel_lb_addr*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb,
			    struct kernel_lb_addr *fileset,
			    struct kernel_lb_addr *root)
{
	struct buffer_head *bh = NULL;
	uint16_t ident;
	int ret;

	if (fileset->logicalBlockNum == 0xFFFFFFFF &&
	    fileset->partitionReferenceNum == 0xFFFF)
		return -EINVAL;

	bh = FUNC4(sb, fileset, 0, &ident);
	if (!bh)
		return -EIO;
	if (ident != TAG_IDENT_FSD) {
		FUNC1(bh);
		return -EINVAL;
	}

	FUNC2("Fileset at block=%u, partition=%u\n",
		  fileset->logicalBlockNum, fileset->partitionReferenceNum);

	FUNC0(sb)->s_partition = fileset->partitionReferenceNum;
	ret = FUNC3(sb, (struct fileSetDesc *)bh->b_data, root);
	FUNC1(bh);
	return ret;
}