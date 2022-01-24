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
struct sysv_dir_entry {char* name; int /*<<< orphan*/  inode; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {unsigned long i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct dir_context {unsigned long pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 scalar_t__ FUNC0 (struct page*) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 unsigned long SYSV_DIRSIZE ; 
 int /*<<< orphan*/  SYSV_NAMELEN ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct dir_context*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct inode*,unsigned long) ; 
 unsigned long FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct inode* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct file *file, struct dir_context *ctx)
{
	unsigned long pos = ctx->pos;
	struct inode *inode = FUNC6(file);
	struct super_block *sb = inode->i_sb;
	unsigned long npages = FUNC4(inode);
	unsigned offset;
	unsigned long n;

	ctx->pos = pos = (pos + SYSV_DIRSIZE-1) & ~(SYSV_DIRSIZE-1);
	if (pos >= inode->i_size)
		return 0;

	offset = pos & ~PAGE_MASK;
	n = pos >> PAGE_SHIFT;

	for ( ; n < npages; n++, offset = 0) {
		char *kaddr, *limit;
		struct sysv_dir_entry *de;
		struct page *page = FUNC3(inode, n);

		if (FUNC0(page))
			continue;
		kaddr = (char *)FUNC8(page);
		de = (struct sysv_dir_entry *)(kaddr+offset);
		limit = kaddr + PAGE_SIZE - SYSV_DIRSIZE;
		for ( ;(char*)de <= limit; de++, ctx->pos += sizeof(*de)) {
			char *name = de->name;

			if (!de->inode)
				continue;

			if (!FUNC2(ctx, name, FUNC9(name,SYSV_NAMELEN),
					FUNC7(FUNC1(sb), de->inode),
					DT_UNKNOWN)) {
				FUNC5(page);
				return 0;
			}
		}
		FUNC5(page);
	}
	return 0;
}