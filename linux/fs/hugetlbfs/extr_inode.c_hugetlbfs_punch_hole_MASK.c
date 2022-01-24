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
struct inode {struct address_space* i_mapping; } ;
struct hugetlbfs_inode_info {int seals; } ;
struct hstate {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rb_root; } ;
struct address_space {TYPE_1__ i_mmap; } ;
typedef  int loff_t ;

/* Variables and functions */
 long EPERM ; 
 int F_SEAL_FUTURE_WRITE ; 
 int F_SEAL_WRITE ; 
 struct hugetlbfs_inode_info* FUNC0 (struct inode*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hstate* FUNC2 (struct inode*) ; 
 int FUNC3 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC6 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int) ; 
 int FUNC10 (int,int) ; 
 int FUNC11 (int,int) ; 

__attribute__((used)) static long FUNC12(struct inode *inode, loff_t offset, loff_t len)
{
	struct hstate *h = FUNC2(inode);
	loff_t hpage_size = FUNC3(h);
	loff_t hole_start, hole_end;

	/*
	 * For hole punch round up the beginning offset of the hole and
	 * round down the end.
	 */
	hole_start = FUNC11(offset, hpage_size);
	hole_end = FUNC10(offset + len, hpage_size);

	if (hole_end > hole_start) {
		struct address_space *mapping = inode->i_mapping;
		struct hugetlbfs_inode_info *info = FUNC0(inode);

		FUNC7(inode);

		/* protected by i_mutex */
		if (info->seals & (F_SEAL_WRITE | F_SEAL_FUTURE_WRITE)) {
			FUNC8(inode);
			return -EPERM;
		}

		FUNC5(mapping);
		if (!FUNC1(&mapping->i_mmap.rb_root))
			FUNC4(&mapping->i_mmap,
						hole_start >> PAGE_SHIFT,
						hole_end  >> PAGE_SHIFT);
		FUNC6(mapping);
		FUNC9(inode, hole_start, hole_end);
		FUNC8(inode);
	}

	return 0;
}