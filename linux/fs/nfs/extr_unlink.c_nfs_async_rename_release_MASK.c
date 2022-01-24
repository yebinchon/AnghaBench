#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs_renamedata {int /*<<< orphan*/  cred; TYPE_1__* new_dir; TYPE_1__* old_dir; int /*<<< orphan*/  new_dentry; int /*<<< orphan*/  old_dentry; scalar_t__ cancelled; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_lock; struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_renamedata*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void *calldata)
{
	struct nfs_renamedata	*data = calldata;
	struct super_block *sb = data->old_dir->i_sb;

	if (FUNC1(data->old_dentry))
		FUNC6(FUNC0(data->old_dentry));

	/* The result of the rename is unknown. Play it safe by
	 * forcing a new lookup */
	if (data->cancelled) {
		FUNC9(&data->old_dir->i_lock);
		FUNC5(data->old_dir);
		FUNC10(&data->old_dir->i_lock);
		if (data->new_dir != data->old_dir) {
			FUNC9(&data->new_dir->i_lock);
			FUNC5(data->new_dir);
			FUNC10(&data->new_dir->i_lock);
		}
	}

	FUNC2(data->old_dentry);
	FUNC2(data->new_dentry);
	FUNC3(data->old_dir);
	FUNC3(data->new_dir);
	FUNC7(sb);
	FUNC8(data->cred);
	FUNC4(data);
}