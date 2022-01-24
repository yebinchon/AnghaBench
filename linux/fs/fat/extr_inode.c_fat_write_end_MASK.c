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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int i_attrs; } ;

/* Variables and functions */
 int ATTR_ARCH ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int S_CTIME ; 
 int S_MTIME ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,scalar_t__) ; 
 int FUNC3 (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *pagep, void *fsdata)
{
	struct inode *inode = mapping->host;
	int err;
	err = FUNC3(file, mapping, pos, len, copied, pagep, fsdata);
	if (err < len)
		FUNC2(mapping, pos + len);
	if (!(err < 0) && !(FUNC0(inode)->i_attrs & ATTR_ARCH)) {
		FUNC1(inode, NULL, S_CTIME|S_MTIME);
		FUNC0(inode)->i_attrs |= ATTR_ARCH;
		FUNC4(inode);
	}
	return err;
}