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
struct super_block {int dummy; } ;
struct page {unsigned int index; TYPE_1__* mapping; } ;
struct nilfs_dir_entry {int name_len; int /*<<< orphan*/  inode; int /*<<< orphan*/  rec_len; } ;
struct inode {unsigned int i_size; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,int /*<<< orphan*/ ,...) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct page*) ; 

__attribute__((used)) static bool FUNC8(struct page *page)
{
	struct inode *dir = page->mapping->host;
	struct super_block *sb = dir->i_sb;
	unsigned int chunk_size = FUNC4(dir);
	char *kaddr = FUNC7(page);
	unsigned int offs, rec_len;
	unsigned int limit = PAGE_SIZE;
	struct nilfs_dir_entry *p;
	char *error;

	if ((dir->i_size >> PAGE_SHIFT) == page->index) {
		limit = dir->i_size & ~PAGE_MASK;
		if (limit & (chunk_size - 1))
			goto Ebadsize;
		if (!limit)
			goto out;
	}
	for (offs = 0; offs <= limit - FUNC0(1); offs += rec_len) {
		p = (struct nilfs_dir_entry *)(kaddr + offs);
		rec_len = FUNC6(p->rec_len);

		if (rec_len < FUNC0(1))
			goto Eshort;
		if (rec_len & 3)
			goto Ealign;
		if (rec_len < FUNC0(p->name_len))
			goto Enamelen;
		if (((offs + rec_len - 1) ^ offs) & ~(chunk_size-1))
			goto Espan;
	}
	if (offs != limit)
		goto Eend;
out:
	FUNC1(page);
	return true;

	/* Too bad, we had an error */

Ebadsize:
	FUNC5(sb,
		    "size of directory #%lu is not a multiple of chunk size",
		    dir->i_ino);
	goto fail;
Eshort:
	error = "rec_len is smaller than minimal";
	goto bad_entry;
Ealign:
	error = "unaligned directory entry";
	goto bad_entry;
Enamelen:
	error = "rec_len is too small for name_len";
	goto bad_entry;
Espan:
	error = "directory entry across blocks";
bad_entry:
	FUNC5(sb,
		    "bad entry in directory #%lu: %s - offset=%lu, inode=%lu, rec_len=%d, name_len=%d",
		    dir->i_ino, error, (page->index << PAGE_SHIFT) + offs,
		    (unsigned long)FUNC3(p->inode),
		    rec_len, p->name_len);
	goto fail;
Eend:
	p = (struct nilfs_dir_entry *)(kaddr + offs);
	FUNC5(sb,
		    "entry in directory #%lu spans the page boundary offset=%lu, inode=%lu",
		    dir->i_ino, (page->index << PAGE_SHIFT) + offs,
		    (unsigned long)FUNC3(p->inode));
fail:
	FUNC2(page);
	return false;
}