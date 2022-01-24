#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct mempolicy {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 long EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 long EPERM ; 
 scalar_t__ FUNC0 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIGRATE_SYNC ; 
 unsigned short MPOL_DEFAULT ; 
 int /*<<< orphan*/  MPOL_F_MOF ; 
 unsigned long MPOL_MF_DISCONTIG_OK ; 
 unsigned long MPOL_MF_INVERT ; 
 unsigned long MPOL_MF_LAZY ; 
 unsigned long MPOL_MF_MOVE ; 
 unsigned long MPOL_MF_MOVE_ALL ; 
 unsigned long MPOL_MF_STRICT ; 
 scalar_t__ MPOL_MF_VALID ; 
 int /*<<< orphan*/  MR_MEMPOLICY_MBIND ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 long FUNC4 (struct mempolicy*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mm_struct*,unsigned long,unsigned long,struct mempolicy*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 struct mempolicy* FUNC12 (unsigned short,unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mempolicy*) ; 
 int FUNC14 (struct mempolicy*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  new_page ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pagelist ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned long,unsigned long,unsigned short,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct mm_struct*,unsigned long,unsigned long,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ scratch ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC22(unsigned long start, unsigned long len,
		     unsigned short mode, unsigned short mode_flags,
		     nodemask_t *nmask, unsigned long flags)
{
	struct mm_struct *mm = current->mm;
	struct mempolicy *new;
	unsigned long end;
	int err;
	int ret;
	FUNC1(pagelist);

	if (flags & ~(unsigned long)MPOL_MF_VALID)
		return -EINVAL;
	if ((flags & MPOL_MF_MOVE_ALL) && !FUNC6(CAP_SYS_NICE))
		return -EPERM;

	if (start & ~PAGE_MASK)
		return -EINVAL;

	if (mode == MPOL_DEFAULT)
		flags &= ~MPOL_MF_STRICT;

	len = (len + PAGE_SIZE - 1) & PAGE_MASK;
	end = start + len;

	if (end < start)
		return -EINVAL;
	if (end == start)
		return 0;

	new = FUNC12(mode, mode_flags, nmask);
	if (FUNC0(new))
		return FUNC4(new);

	if (flags & MPOL_MF_LAZY)
		new->flags |= MPOL_F_MOF;

	/*
	 * If we are using the default policy then operation
	 * on discontinuous address spaces is okay after all
	 */
	if (!new)
		flags |= MPOL_MF_DISCONTIG_OK;

	FUNC16("mbind %lx-%lx mode:%d flags:%d nodes:%lx\n",
		 start, start + len, mode, mode_flags,
		 nmask ? FUNC15(*nmask)[0] : NUMA_NO_NODE);

	if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL)) {

		err = FUNC11();
		if (err)
			goto mpol_out;
	}
	{
		FUNC2(scratch);
		if (scratch) {
			FUNC7(&mm->mmap_sem);
			FUNC19(current);
			err = FUNC14(new, nmask, scratch);
			FUNC20(current);
			if (err)
				FUNC21(&mm->mmap_sem);
		} else
			err = -ENOMEM;
		FUNC3(scratch);
	}
	if (err)
		goto mpol_out;

	ret = FUNC18(mm, start, end, nmask,
			  flags | MPOL_MF_INVERT, &pagelist);

	if (ret < 0) {
		err = -EIO;
		goto up_out;
	}

	err = FUNC9(mm, start, end, new);

	if (!err) {
		int nr_failed = 0;

		if (!FUNC8(&pagelist)) {
			FUNC5(flags & MPOL_MF_LAZY);
			nr_failed = FUNC10(&pagelist, new_page, NULL,
				start, MIGRATE_SYNC, MR_MEMPOLICY_MBIND);
			if (nr_failed)
				FUNC17(&pagelist);
		}

		if ((ret > 0) || (nr_failed && (flags & MPOL_MF_STRICT)))
			err = -EIO;
	} else
		FUNC17(&pagelist);

up_out:
	FUNC21(&mm->mmap_sem);
mpol_out:
	FUNC13(new);
	return err;
}