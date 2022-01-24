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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int FUNC0 (struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nilfs_get_block ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*,unsigned int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct address_space *mapping,
			     loff_t pos, unsigned len, unsigned flags,
			     struct page **pagep, void **fsdata)

{
	struct inode *inode = mapping->host;
	int err = FUNC2(inode->i_sb, NULL, 1);

	if (FUNC4(err))
		return err;

	err = FUNC0(mapping, pos, len, flags, pagep,
				nilfs_get_block);
	if (FUNC4(err)) {
		FUNC3(mapping, pos + len);
		FUNC1(inode->i_sb);
	}
	return err;
}