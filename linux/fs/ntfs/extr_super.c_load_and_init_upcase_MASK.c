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
struct page {int /*<<< orphan*/  i_mapping; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  int pgoff_t ;
typedef  scalar_t__ ntfschar ;
struct TYPE_3__ {scalar_t__* upcase; int upcase_len; struct super_block* sb; } ;
typedef  TYPE_1__ ntfs_volume ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_UpCase ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int UCHAR_T_SIZE_BITS ; 
 scalar_t__* default_upcase ; 
 void* default_upcase_len ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 struct page* FUNC10 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntfs_lock ; 
 scalar_t__ FUNC11 (int) ; 
 struct page* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ntfs_nr_upcase_users ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static bool FUNC15(ntfs_volume *vol)
{
	loff_t i_size;
	struct super_block *sb = vol->sb;
	struct inode *ino;
	struct page *page;
	pgoff_t index, max_index;
	unsigned int size;
	int i, max;

	FUNC7("Entering.");
	/* Read upcase table and setup vol->upcase and vol->upcase_len. */
	ino = FUNC10(sb, FILE_UpCase);
	if (FUNC0(ino) || FUNC3(ino)) {
		if (!FUNC0(ino))
			FUNC2(ino);
		goto upcase_failed;
	}
	/*
	 * The upcase size must not be above 64k Unicode characters, must not
	 * be zero and must be a multiple of sizeof(ntfschar).
	 */
	i_size = FUNC1(ino);
	if (!i_size || i_size & (sizeof(ntfschar) - 1) ||
			i_size > 64ULL * 1024 * sizeof(ntfschar))
		goto iput_upcase_failed;
	vol->upcase = (ntfschar*)FUNC11(i_size);
	if (!vol->upcase)
		goto iput_upcase_failed;
	index = 0;
	max_index = i_size >> PAGE_SHIFT;
	size = PAGE_SIZE;
	while (index < max_index) {
		/* Read the upcase table and copy it into the linear buffer. */
read_partial_upcase_page:
		page = FUNC12(ino->i_mapping, index);
		if (FUNC0(page))
			goto iput_upcase_failed;
		FUNC4((char*)vol->upcase + (index++ << PAGE_SHIFT),
				FUNC14(page), size);
		FUNC13(page);
	};
	if (size == PAGE_SIZE) {
		size = i_size & ~PAGE_MASK;
		if (size)
			goto read_partial_upcase_page;
	}
	vol->upcase_len = i_size >> UCHAR_T_SIZE_BITS;
	FUNC7("Read %llu bytes from $UpCase (expected %zu bytes).",
			i_size, 64 * 1024 * sizeof(ntfschar));
	FUNC2(ino);
	FUNC5(&ntfs_lock);
	if (!default_upcase) {
		FUNC7("Using volume specified $UpCase since default is "
				"not present.");
		FUNC6(&ntfs_lock);
		return true;
	}
	max = default_upcase_len;
	if (max > vol->upcase_len)
		max = vol->upcase_len;
	for (i = 0; i < max; i++)
		if (vol->upcase[i] != default_upcase[i])
			break;
	if (i == max) {
		FUNC9(vol->upcase);
		vol->upcase = default_upcase;
		vol->upcase_len = max;
		ntfs_nr_upcase_users++;
		FUNC6(&ntfs_lock);
		FUNC7("Volume specified $UpCase matches default. Using "
				"default.");
		return true;
	}
	FUNC6(&ntfs_lock);
	FUNC7("Using volume specified $UpCase since it does not match "
			"the default.");
	return true;
iput_upcase_failed:
	FUNC2(ino);
	FUNC9(vol->upcase);
	vol->upcase = NULL;
upcase_failed:
	FUNC5(&ntfs_lock);
	if (default_upcase) {
		vol->upcase = default_upcase;
		vol->upcase_len = default_upcase_len;
		ntfs_nr_upcase_users++;
		FUNC6(&ntfs_lock);
		FUNC8(sb, "Failed to load $UpCase from the volume. Using "
				"default.");
		return true;
	}
	FUNC6(&ntfs_lock);
	FUNC8(sb, "Failed to initialize upcase table.");
	return false;
}