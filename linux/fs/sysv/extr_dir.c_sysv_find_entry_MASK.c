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
struct sysv_dir_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  inode; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {int /*<<< orphan*/  d_parent; TYPE_1__ d_name; } ;
struct TYPE_4__ {unsigned long i_dir_start_lookup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ SYSV_DIRSIZE ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  SYSV_NAMELEN ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct inode*,unsigned long) ; 
 unsigned long FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct page*) ; 

struct sysv_dir_entry *FUNC8(struct dentry *dentry, struct page **res_page)
{
	const char * name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct inode * dir = FUNC2(dentry->d_parent);
	unsigned long start, n;
	unsigned long npages = FUNC4(dir);
	struct page *page = NULL;
	struct sysv_dir_entry *de;

	*res_page = NULL;

	start = FUNC1(dir)->i_dir_start_lookup;
	if (start >= npages)
		start = 0;
	n = start;

	do {
		char *kaddr;
		page = FUNC3(dir, n);
		if (!FUNC0(page)) {
			kaddr = (char*)FUNC7(page);
			de = (struct sysv_dir_entry *) kaddr;
			kaddr += PAGE_SIZE - SYSV_DIRSIZE;
			for ( ; (char *) de <= kaddr ; de++) {
				if (!de->inode)
					continue;
				if (FUNC6(namelen, SYSV_NAMELEN,
							name, de->name))
					goto found;
			}
			FUNC5(page);
		}

		if (++n >= npages)
			n = 0;
	} while (n != start);

	return NULL;

found:
	FUNC1(dir)->i_dir_start_lookup = n;
	*res_page = page;
	return de;
}