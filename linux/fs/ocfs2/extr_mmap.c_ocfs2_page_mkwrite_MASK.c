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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {int /*<<< orphan*/  ip_alloc_sem; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_file; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct buffer_head*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static vm_fault_t FUNC14(struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct inode *inode = FUNC4(vmf->vma->vm_file);
	struct buffer_head *di_bh = NULL;
	sigset_t oldset;
	int err;
	vm_fault_t ret;

	FUNC11(inode->i_sb);
	FUNC6(&oldset);

	/*
	 * The cluster locks taken will block a truncate from another
	 * node. Taking the data lock will also ensure that we don't
	 * attempt page truncation as part of a downconvert.
	 */
	err = FUNC7(inode, &di_bh, 1);
	if (err < 0) {
		FUNC5(err);
		ret = FUNC13(err);
		goto out;
	}

	/*
	 * The alloc sem should be enough to serialize with
	 * ocfs2_truncate_file() changing i_size as well as any thread
	 * modifying the inode btree.
	 */
	FUNC3(&FUNC0(inode)->ip_alloc_sem);

	ret = FUNC1(vmf->vma->vm_file, di_bh, page);

	FUNC12(&FUNC0(inode)->ip_alloc_sem);

	FUNC2(di_bh);
	FUNC8(inode, 1);

out:
	FUNC9(&oldset);
	FUNC10(inode->i_sb);
	return ret;
}