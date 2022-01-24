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
typedef  int vm_fault_t ;
struct vm_fault {unsigned long address; int flags; scalar_t__ cow_page; int /*<<< orphan*/ * pmd; scalar_t__ pgoff; struct vm_area_struct* vma; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; TYPE_1__* vm_file; } ;
struct iomap_ops {int (* iomap_begin ) (struct inode*,scalar_t__,int,unsigned int,struct iomap*) ;int /*<<< orphan*/  (* iomap_end ) (struct inode*,scalar_t__,int,int,unsigned int,struct iomap*) ;} ;
struct iomap {scalar_t__ offset; scalar_t__ length; int type; int flags; int /*<<< orphan*/  dax_dev; int /*<<< orphan*/  bdev; int /*<<< orphan*/  member_0; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; int /*<<< orphan*/  i_pages; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 int EIO ; 
 int FAULT_FLAG_WRITE ; 
 unsigned int IOMAP_FAULT ; 
 int IOMAP_F_NEW ; 
#define  IOMAP_HOLE 130 
#define  IOMAP_MAPPED 129 
#define  IOMAP_UNWRITTEN 128 
 unsigned int IOMAP_WRITE ; 
 scalar_t__ PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PGMAJFAULT ; 
 int VM_FAULT_DONE_COW ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_NEEDDSYNC ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_SIGBUS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned int,struct vm_area_struct*,struct iomap*) ; 
 int FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ *,struct address_space*,struct vm_fault*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct iomap*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct iomap*,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct address_space*,void**,struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void*) ; 
 int FUNC14 (struct vm_fault*) ; 
 void* FUNC15 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct inode*,scalar_t__,int,unsigned int,struct iomap*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,scalar_t__,int,int,unsigned int,struct iomap*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,struct vm_fault*,void*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,struct vm_fault*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,struct vm_fault*,int) ; 
 int FUNC24 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (void*) ; 
 int FUNC27 (void*) ; 
 int /*<<< orphan*/  xas ; 

__attribute__((used)) static vm_fault_t FUNC28(struct vm_fault *vmf, pfn_t *pfnp,
			       int *iomap_errp, const struct iomap_ops *ops)
{
	struct vm_area_struct *vma = vmf->vma;
	struct address_space *mapping = vma->vm_file->f_mapping;
	FUNC1(xas, &mapping->i_pages, vmf->pgoff);
	struct inode *inode = mapping->host;
	unsigned long vaddr = vmf->address;
	loff_t pos = (loff_t)vmf->pgoff << PAGE_SHIFT;
	struct iomap iomap = { 0 };
	unsigned flags = IOMAP_FAULT;
	int error, major = 0;
	bool write = vmf->flags & FAULT_FLAG_WRITE;
	bool sync;
	vm_fault_t ret = 0;
	void *entry;
	pfn_t pfn;

	FUNC22(inode, vmf, ret);
	/*
	 * Check whether offset isn't beyond end of file now. Caller is supposed
	 * to hold locks serializing us with truncate / punch hole so this is
	 * a reliable test.
	 */
	if (pos >= FUNC16(inode)) {
		ret = VM_FAULT_SIGBUS;
		goto out;
	}

	if (write && !vmf->cow_page)
		flags |= IOMAP_WRITE;

	entry = FUNC15(&xas, mapping, 0);
	if (FUNC26(entry)) {
		ret = FUNC27(entry);
		goto out;
	}

	/*
	 * It is possible, particularly with mixed reads & writes to private
	 * mappings, that we have raced with a PMD fault that overlaps with
	 * the PTE we need to set up.  If so just return and the fault will be
	 * retried.
	 */
	if (FUNC18(*vmf->pmd) || FUNC17(*vmf->pmd)) {
		ret = VM_FAULT_NOPAGE;
		goto unlock_entry;
	}

	/*
	 * Note that we don't bother to use iomap_apply here: DAX required
	 * the file system block size to be equal the page size, which means
	 * that we never have to deal with more than a single extent here.
	 */
	error = ops->iomap_begin(inode, pos, PAGE_SIZE, flags, &iomap);
	if (iomap_errp)
		*iomap_errp = error;
	if (error) {
		ret = FUNC8(error);
		goto unlock_entry;
	}
	if (FUNC0(iomap.offset + iomap.length < pos + PAGE_SIZE)) {
		error = -EIO;	/* fs corruption? */
		goto error_finish_iomap;
	}

	if (vmf->cow_page) {
		sector_t sector = FUNC11(&iomap, pos);

		switch (iomap.type) {
		case IOMAP_HOLE:
		case IOMAP_UNWRITTEN:
			FUNC3(vmf->cow_page, vaddr);
			break;
		case IOMAP_MAPPED:
			error = FUNC4(iomap.bdev, iomap.dax_dev,
					sector, PAGE_SIZE, vmf->cow_page, vaddr);
			break;
		default:
			FUNC0(1);
			error = -EIO;
			break;
		}

		if (error)
			goto error_finish_iomap;

		FUNC2(vmf->cow_page);
		ret = FUNC14(vmf);
		if (!ret)
			ret = VM_FAULT_DONE_COW;
		goto finish_iomap;
	}

	sync = FUNC7(flags, vma, &iomap);

	switch (iomap.type) {
	case IOMAP_MAPPED:
		if (iomap.flags & IOMAP_F_NEW) {
			FUNC6(PGMAJFAULT);
			FUNC5(vma->vm_mm, PGMAJFAULT);
			major = VM_FAULT_MAJOR;
		}
		error = FUNC10(&iomap, pos, PAGE_SIZE, &pfn);
		if (error < 0)
			goto error_finish_iomap;

		entry = FUNC9(&xas, mapping, vmf, entry, pfn,
						 0, write && !sync);

		/*
		 * If we are doing synchronous page fault and inode needs fsync,
		 * we can insert PTE into page tables only after that happens.
		 * Skip insertion for now and return the pfn so that caller can
		 * insert it after fsync is done.
		 */
		if (sync) {
			if (FUNC0(!pfnp)) {
				error = -EIO;
				goto error_finish_iomap;
			}
			*pfnp = pfn;
			ret = VM_FAULT_NEEDDSYNC | major;
			goto finish_iomap;
		}
		FUNC21(inode, vmf, entry);
		if (write)
			ret = FUNC25(vma, vaddr, pfn);
		else
			ret = FUNC24(vma, vaddr, pfn);

		goto finish_iomap;
	case IOMAP_UNWRITTEN:
	case IOMAP_HOLE:
		if (!write) {
			ret = FUNC12(&xas, mapping, &entry, vmf);
			goto finish_iomap;
		}
		/*FALLTHRU*/
	default:
		FUNC0(1);
		error = -EIO;
		break;
	}

 error_finish_iomap:
	ret = FUNC8(error);
 finish_iomap:
	if (ops->iomap_end) {
		int copied = PAGE_SIZE;

		if (ret & VM_FAULT_ERROR)
			copied = 0;
		/*
		 * The fault is done by now and there's no way back (other
		 * thread may be already happily using PTE we have installed).
		 * Just ignore error from ->iomap_end since we cannot do much
		 * with it.
		 */
		ops->iomap_end(inode, pos, PAGE_SIZE, copied, flags, &iomap);
	}
 unlock_entry:
	FUNC13(&xas, entry);
 out:
	FUNC23(inode, vmf, ret);
	return ret | major;
}