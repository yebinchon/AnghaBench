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
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct minix_sb_info {unsigned int s_dirsize; scalar_t__ s_version; int /*<<< orphan*/  s_namelen; } ;
struct inode {unsigned long i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct dir_context {unsigned long pos; } ;
struct TYPE_3__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_1__ minix_dirent ;
struct TYPE_4__ {char* name; scalar_t__ inode; } ;
typedef  TYPE_2__ minix3_dirent ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ MINIX_V3 ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct dir_context*,char const*,unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct inode*,unsigned long) ; 
 unsigned long FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct inode* FUNC6 (struct file*) ; 
 int FUNC7 (struct inode*,unsigned long) ; 
 char* FUNC8 (char*,struct minix_sb_info*) ; 
 struct minix_sb_info* FUNC9 (struct super_block*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 unsigned int FUNC11 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct file *file, struct dir_context *ctx)
{
	struct inode *inode = FUNC6(file);
	struct super_block *sb = inode->i_sb;
	struct minix_sb_info *sbi = FUNC9(sb);
	unsigned chunk_size = sbi->s_dirsize;
	unsigned long npages = FUNC4(inode);
	unsigned long pos = ctx->pos;
	unsigned offset;
	unsigned long n;

	ctx->pos = pos = FUNC0(pos, chunk_size);
	if (pos >= inode->i_size)
		return 0;

	offset = pos & ~PAGE_MASK;
	n = pos >> PAGE_SHIFT;

	for ( ; n < npages; n++, offset = 0) {
		char *p, *kaddr, *limit;
		struct page *page = FUNC3(inode, n);

		if (FUNC1(page))
			continue;
		kaddr = (char *)FUNC10(page);
		p = kaddr+offset;
		limit = kaddr + FUNC7(inode, n) - chunk_size;
		for ( ; p <= limit; p = FUNC8(p, sbi)) {
			const char *name;
			__u32 inumber;
			if (sbi->s_version == MINIX_V3) {
				minix3_dirent *de3 = (minix3_dirent *)p;
				name = de3->name;
				inumber = de3->inode;
	 		} else {
				minix_dirent *de = (minix_dirent *)p;
				name = de->name;
				inumber = de->inode;
			}
			if (inumber) {
				unsigned l = FUNC11(name, sbi->s_namelen);
				if (!FUNC2(ctx, name, l,
					      inumber, DT_UNKNOWN)) {
					FUNC5(page);
					return 0;
				}
			}
			ctx->pos += chunk_size;
		}
		FUNC5(page);
	}
	return 0;
}