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
struct sysv_dir_entry {int /*<<< orphan*/  inode; } ;
struct page {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sysv_dir_entry* FUNC3 (struct dentry*,struct page**) ; 

ino_t FUNC4(struct dentry *dentry)
{
	struct page *page;
	struct sysv_dir_entry *de = FUNC3 (dentry, &page);
	ino_t res = 0;
	
	if (de) {
		res = FUNC2(FUNC0(dentry->d_sb), de->inode);
		FUNC1(page);
	}
	return res;
}