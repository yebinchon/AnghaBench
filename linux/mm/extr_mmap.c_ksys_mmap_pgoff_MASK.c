#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct user_struct {int dummy; } ;
struct hstate {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long EBADF ; 
 unsigned long EINVAL ; 
 int /*<<< orphan*/  HUGETLB_ANONHUGE_INODE ; 
 int /*<<< orphan*/  HUGETLB_ANON_FILE ; 
 scalar_t__ FUNC1 (struct file*) ; 
 unsigned long MAP_ANONYMOUS ; 
 unsigned long MAP_DENYWRITE ; 
 unsigned long MAP_EXECUTABLE ; 
 unsigned long MAP_HUGETLB ; 
 unsigned long MAP_HUGE_MASK ; 
 unsigned long MAP_HUGE_SHIFT ; 
 unsigned long FUNC2 (struct file*) ; 
 int /*<<< orphan*/  VM_NORESERVE ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 struct file* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 struct hstate* FUNC6 (struct file*) ; 
 struct hstate* FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct hstate*) ; 
 struct file* FUNC9 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct user_struct**,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC10 (struct file*) ; 
 scalar_t__ FUNC11 (int) ; 
 unsigned long FUNC12 (unsigned long) ; 
 unsigned long FUNC13 (struct file*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

unsigned long FUNC14(unsigned long addr, unsigned long len,
			      unsigned long prot, unsigned long flags,
			      unsigned long fd, unsigned long pgoff)
{
	struct file *file = NULL;
	unsigned long retval;

	addr = FUNC12(addr);

	if (!(flags & MAP_ANONYMOUS)) {
		FUNC3(fd, flags);
		file = FUNC4(fd);
		if (!file)
			return -EBADF;
		if (FUNC10(file))
			len = FUNC0(len, FUNC8(FUNC6(file)));
		retval = -EINVAL;
		if (FUNC11(flags & MAP_HUGETLB && !FUNC10(file)))
			goto out_fput;
	} else if (flags & MAP_HUGETLB) {
		struct user_struct *user = NULL;
		struct hstate *hs;

		hs = FUNC7((flags >> MAP_HUGE_SHIFT) & MAP_HUGE_MASK);
		if (!hs)
			return -EINVAL;

		len = FUNC0(len, FUNC8(hs));
		/*
		 * VM_NORESERVE is used because the reservations will be
		 * taken when vm_ops->mmap() is called
		 * A dummy user value is used because we are not locking
		 * memory so no accounting is necessary
		 */
		file = FUNC9(HUGETLB_ANON_FILE, len,
				VM_NORESERVE,
				&user, HUGETLB_ANONHUGE_INODE,
				(flags >> MAP_HUGE_SHIFT) & MAP_HUGE_MASK);
		if (FUNC1(file))
			return FUNC2(file);
	}

	flags &= ~(MAP_EXECUTABLE | MAP_DENYWRITE);

	retval = FUNC13(file, addr, len, prot, flags, pgoff);
out_fput:
	if (file)
		FUNC5(file);
	return retval;
}