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
struct super_block {int dummy; } ;
struct nfs_unlinkdata {struct dentry* dentry; } ;
struct dentry {int /*<<< orphan*/  d_parent; struct super_block* d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  rmdir_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void *calldata)
{
	struct nfs_unlinkdata	*data = calldata;
	struct dentry *dentry = data->dentry;
	struct super_block *sb = dentry->d_sb;

	FUNC6(&FUNC0(FUNC1(dentry->d_parent))->rmdir_sem);
	FUNC2(dentry);
	FUNC4(data);
	FUNC3(dentry);
	FUNC5(sb);
}