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
struct jfs_ea_list {int dummy; } ;
struct jfs_ea {int dummy; } ;
struct inode {int dummy; } ;
struct ea_buffer {scalar_t__ xattr; } ;
struct dentry {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 struct jfs_ea* FUNC0 (struct jfs_ea_list*) ; 
 size_t ERANGE ; 
 struct jfs_ea* FUNC1 (struct jfs_ea_list*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 struct jfs_ea* FUNC3 (struct jfs_ea*) ; 
 scalar_t__ FUNC4 (struct jfs_ea*) ; 
 int FUNC5 (char*,struct jfs_ea*) ; 
 struct inode* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*,struct ea_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct ea_buffer*) ; 
 scalar_t__ FUNC10 (struct jfs_ea*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

ssize_t FUNC12(struct dentry * dentry, char *data, size_t buf_size)
{
	struct inode *inode = FUNC6(dentry);
	char *buffer;
	ssize_t size = 0;
	int xattr_size;
	struct jfs_ea_list *ealist;
	struct jfs_ea *ea;
	struct ea_buffer ea_buf;

	FUNC7(&FUNC2(inode)->xattr_sem);

	xattr_size = FUNC8(inode, &ea_buf, 0);
	if (xattr_size < 0) {
		size = xattr_size;
		goto out;
	}

	if (xattr_size == 0)
		goto release;

	ealist = (struct jfs_ea_list *) ea_buf.xattr;

	/* compute required size of list */
	for (ea = FUNC1(ealist); ea < FUNC0(ealist); ea = FUNC3(ea)) {
		if (FUNC4(ea))
			size += FUNC10(ea) + 1;
	}

	if (!data)
		goto release;

	if (size > buf_size) {
		size = -ERANGE;
		goto release;
	}

	/* Copy attribute names to buffer */
	buffer = data;
	for (ea = FUNC1(ealist); ea < FUNC0(ealist); ea = FUNC3(ea)) {
		if (FUNC4(ea)) {
			int namelen = FUNC5(buffer, ea);
			buffer += namelen + 1;
		}
	}

      release:
	FUNC9(inode, &ea_buf);
      out:
	FUNC11(&FUNC2(inode)->xattr_sem);
	return size;
}