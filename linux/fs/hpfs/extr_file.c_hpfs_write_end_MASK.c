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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int i_dirty; } ;

/* Variables and functions */
 int FUNC0 (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *pagep, void *fsdata)
{
	struct inode *inode = mapping->host;
	int err;
	err = FUNC0(file, mapping, pos, len, copied, pagep, fsdata);
	if (err < len)
		FUNC4(mapping, pos + len);
	if (!(err < 0)) {
		/* make sure we write it on close, if not earlier */
		FUNC2(inode->i_sb);
		FUNC1(inode)->i_dirty = 1;
		FUNC3(inode->i_sb);
	}
	return err;
}