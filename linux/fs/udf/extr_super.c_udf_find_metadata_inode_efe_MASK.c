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
typedef  void* u32 ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {void* partitionReferenceNum; void* logicalBlockNum; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_alloc_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ICBTAG_FLAG_AD_SHORT ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,struct kernel_lb_addr*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*) ; 

struct inode *FUNC6(struct super_block *sb,
					u32 meta_file_loc, u32 partition_ref)
{
	struct kernel_lb_addr addr;
	struct inode *metadata_fe;

	addr.logicalBlockNum = meta_file_loc;
	addr.partitionReferenceNum = partition_ref;

	metadata_fe = FUNC4(sb, &addr);

	if (FUNC1(metadata_fe)) {
		FUNC5(sb, "metadata inode efe not found\n");
		return metadata_fe;
	}
	if (FUNC2(metadata_fe)->i_alloc_type != ICBTAG_FLAG_AD_SHORT) {
		FUNC5(sb, "metadata inode efe does not have short allocation descriptors!\n");
		FUNC3(metadata_fe);
		return FUNC0(-EIO);
	}

	return metadata_fe;
}