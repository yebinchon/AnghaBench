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
typedef  size_t u32 ;
struct vm_area_struct {int vm_flags; struct file* vm_file; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct inode {unsigned long i_size; int /*<<< orphan*/  i_ctime; struct address_space* i_mapping; } ;
struct hugetlbfs_inode_info {int seals; } ;
struct hstate {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  unsigned long pgoff_t ;
typedef  unsigned long loff_t ;
struct TYPE_3__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int EINTR ; 
 long EOPNOTSUPP ; 
 int EPERM ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 int F_SEAL_GROW ; 
 struct hugetlbfs_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int VM_HUGETLB ; 
 int VM_MAYSHARE ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct file*) ; 
 struct page* FUNC9 (struct address_space*,unsigned long) ; 
 struct hstate* FUNC10 (struct inode*) ; 
 int FUNC11 (struct page*,struct address_space*,unsigned long) ; 
 unsigned long FUNC12 (struct hstate*) ; 
 unsigned long FUNC13 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC14 (struct vm_area_struct*) ; 
 size_t FUNC15 (struct hstate*,struct address_space*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * hugetlb_fault_mutex_table ; 
 int /*<<< orphan*/  FUNC16 (struct vm_area_struct*,struct inode*,unsigned long) ; 
 long FUNC17 (struct inode*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int FUNC20 (struct inode*,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 scalar_t__ FUNC26 (TYPE_1__*) ; 
 scalar_t__ FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 
 int /*<<< orphan*/  FUNC29 (struct vm_area_struct*,struct mm_struct*) ; 

__attribute__((used)) static long FUNC30(struct file *file, int mode, loff_t offset,
				loff_t len)
{
	struct inode *inode = FUNC8(file);
	struct hugetlbfs_inode_info *info = FUNC0(inode);
	struct address_space *mapping = inode->i_mapping;
	struct hstate *h = FUNC10(inode);
	struct vm_area_struct pseudo_vma;
	struct mm_struct *mm = current->mm;
	loff_t hpage_size = FUNC13(h);
	unsigned long hpage_shift = FUNC12(h);
	pgoff_t start, index, end;
	int error;
	u32 hash;

	if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE))
		return -EOPNOTSUPP;

	if (mode & FALLOC_FL_PUNCH_HOLE)
		return FUNC17(inode, offset, len);

	/*
	 * Default preallocate case.
	 * For this range, start is rounded down and end is rounded up
	 * as well as being converted to page offsets.
	 */
	start = offset >> hpage_shift;
	end = (offset + len + hpage_size - 1) >> hpage_shift;

	FUNC19(inode);

	/* We need to check rlimit even when FALLOC_FL_KEEP_SIZE */
	error = FUNC20(inode, offset + len);
	if (error)
		goto out;

	if ((info->seals & F_SEAL_GROW) && offset + len > inode->i_size) {
		error = -EPERM;
		goto out;
	}

	/*
	 * Initialize a pseudo vma as this is required by the huge page
	 * allocation routines.  If NUMA is configured, use page index
	 * as input to create an allocation policy.
	 */
	FUNC29(&pseudo_vma, mm);
	pseudo_vma.vm_flags = (VM_HUGETLB | VM_MAYSHARE | VM_SHARED);
	pseudo_vma.vm_file = file;

	for (index = start; index < end; index++) {
		/*
		 * This is supposed to be the vaddr where the page is being
		 * faulted in, but we have no vaddr here.
		 */
		struct page *page;
		unsigned long addr;
		int avoid_reserve = 0;

		FUNC6();

		/*
		 * fallocate(2) manpage permits EINTR; we may have been
		 * interrupted because we are using up too much memory.
		 */
		if (FUNC26(current)) {
			error = -EINTR;
			break;
		}

		/* Set numa allocation policy based on index */
		FUNC16(&pseudo_vma, inode, index);

		/* addr is the offset within the file (zero based) */
		addr = index * hpage_size;

		/* mutex taken here, fault path and hole punch */
		hash = FUNC15(h, mapping, index, addr);
		FUNC22(&hugetlb_fault_mutex_table[hash]);

		/* See if already present in mapping to avoid alloc/free */
		page = FUNC9(mapping, index);
		if (page) {
			FUNC25(page);
			FUNC23(&hugetlb_fault_mutex_table[hash]);
			FUNC14(&pseudo_vma);
			continue;
		}

		/* Allocate page and add to page cache */
		page = FUNC4(&pseudo_vma, addr, avoid_reserve);
		FUNC14(&pseudo_vma);
		if (FUNC1(page)) {
			FUNC23(&hugetlb_fault_mutex_table[hash]);
			error = FUNC2(page);
			goto out;
		}
		FUNC5(page, addr, FUNC24(h));
		FUNC3(page);
		error = FUNC11(page, mapping, index);
		if (FUNC27(error)) {
			FUNC25(page);
			FUNC23(&hugetlb_fault_mutex_table[hash]);
			goto out;
		}

		FUNC23(&hugetlb_fault_mutex_table[hash]);

		/*
		 * unlock_page because locked by add_to_page_cache()
		 * page_put due to reference from alloc_huge_page()
		 */
		FUNC28(page);
		FUNC25(page);
	}

	if (!(mode & FALLOC_FL_KEEP_SIZE) && offset + len > inode->i_size)
		FUNC18(inode, offset + len);
	inode->i_ctime = FUNC7(inode);
out:
	FUNC21(inode);
	return error;
}