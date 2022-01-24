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
struct svc_fh {int /*<<< orphan*/  fh_export; int /*<<< orphan*/  fh_dentry; } ;
struct inode {TYPE_1__* i_sb; } ;
struct export_operations {int (* commit_metadata ) (struct inode*) ;} ;
struct TYPE_2__ {struct export_operations* s_export_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,int) ; 

__attribute__((used)) static int
FUNC4(struct svc_fh *fhp)
{
	struct inode *inode = FUNC1(fhp->fh_dentry);
	const struct export_operations *export_ops = inode->i_sb->s_export_op;

	if (!FUNC0(fhp->fh_export))
		return 0;

	if (export_ops->commit_metadata)
		return export_ops->commit_metadata(inode);
	return FUNC3(inode, 1);
}