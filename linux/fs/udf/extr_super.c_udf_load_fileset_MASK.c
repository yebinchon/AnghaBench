#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct kernel_lb_addr {int /*<<< orphan*/  partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct TYPE_5__ {int /*<<< orphan*/  tagSerialNum; } ;
struct TYPE_4__ {int /*<<< orphan*/  extLocation; } ;
struct fileSetDesc {TYPE_2__ descTag; TYPE_1__ rootDirectoryICB; int /*<<< orphan*/  domainIdent; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_serial_number; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct kernel_lb_addr FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, struct fileSetDesc *fset,
			    struct kernel_lb_addr *root)
{
	int ret;

	ret = FUNC4(sb, &fset->domainIdent, "file set");
	if (ret < 0)
		return ret;

	*root = FUNC2(fset->rootDirectoryICB.extLocation);
	FUNC0(sb)->s_serial_number = FUNC1(fset->descTag.tagSerialNum);

	FUNC3("Rootdir at block=%u, partition=%u\n",
		  root->logicalBlockNum, root->partitionReferenceNum);
	return 0;
}