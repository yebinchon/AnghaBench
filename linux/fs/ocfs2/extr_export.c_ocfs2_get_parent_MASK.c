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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC16 (struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC17(struct dentry *child)
{
	int status;
	u64 blkno;
	struct dentry *parent;
	struct inode *dir = FUNC3(child);
	int set;

	FUNC15(child, child->d_name.len, child->d_name.name,
			       (unsigned long long)FUNC1(dir)->ip_blkno);

	status = FUNC11(FUNC2(dir->i_sb), 1);
	if (status < 0) {
		FUNC5(ML_ERROR, "getting nfs sync lock(EX) failed %d\n", status);
		parent = FUNC0(status);
		goto bail;
	}

	status = FUNC8(dir, NULL, 0);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC6(status);
		parent = FUNC0(status);
		goto unlock_nfs_sync;
	}

	status = FUNC10(dir, "..", 2, &blkno);
	if (status < 0) {
		parent = FUNC0(-ENOENT);
		goto bail_unlock;
	}

	status = FUNC13(FUNC2(dir->i_sb), blkno, &set);
	if (status < 0) {
		if (status == -EINVAL) {
			status = -ESTALE;
		} else
			FUNC5(ML_ERROR, "test inode bit failed %d\n", status);
		parent = FUNC0(status);
		goto bail_unlock;
	}

	FUNC14(status, set);
	if (!set) {
		status = -ESTALE;
		parent = FUNC0(status);
		goto bail_unlock;
	}

	parent = FUNC4(FUNC7(FUNC2(dir->i_sb), blkno, 0, 0));

bail_unlock:
	FUNC9(dir, 0);

unlock_nfs_sync:
	FUNC12(FUNC2(dir->i_sb), 1);

bail:
	FUNC16(parent);

	return parent;
}