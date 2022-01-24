#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; struct address_space* i_mapping; } ;
struct file {TYPE_3__* f_mapping; } ;
struct address_space {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_2__* host; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_ino; } ;
struct TYPE_6__ {struct file* vm_file; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALIDATING ; 
 int /*<<< orphan*/  PAGECACHE ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  VM_FAULT_LOCKED ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct file*,int /*<<< orphan*/ ,long long) ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct file*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct page*) ; 
 unsigned int FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct file*,struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  nfs_wait_bit_killable ; 
 struct address_space* FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static vm_fault_t FUNC15(struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct file *filp = vmf->vma->vm_file;
	struct inode *inode = FUNC2(filp);
	unsigned pagelen;
	vm_fault_t ret = VM_FAULT_NOPAGE;
	struct address_space *mapping;

	FUNC1(PAGECACHE, "NFS: vm_page_mkwrite(%pD2(%lu), offset %lld)\n",
		filp, filp->f_mapping->host->i_ino,
		(long long)FUNC9(page));

	FUNC11(inode->i_sb);

	/* make sure the cache has finished storing the page */
	FUNC5(FUNC0(inode), page);

	FUNC13(&FUNC0(inode)->flags, NFS_INO_INVALIDATING,
			nfs_wait_bit_killable, TASK_KILLABLE);

	FUNC3(page);
	mapping = FUNC8(page);
	if (mapping != inode->i_mapping)
		goto out_unlock;

	FUNC14(page);

	pagelen = FUNC6(page);
	if (pagelen == 0)
		goto out_unlock;

	ret = VM_FAULT_LOCKED;
	if (FUNC4(filp, page) == 0 &&
	    FUNC7(filp, page, 0, pagelen) == 0)
		goto out;

	ret = VM_FAULT_SIGBUS;
out_unlock:
	FUNC12(page);
out:
	FUNC10(inode->i_sb);
	return ret;
}