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
struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {unsigned char i_advise; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 unsigned char FADVISE_MODIFIABLE_BITS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(const struct xattr_handler *handler,
		struct dentry *unused, struct inode *inode,
		const char *name, const void *value,
		size_t size, int flags)
{
	unsigned char old_advise = FUNC0(inode)->i_advise;
	unsigned char new_advise;

	if (!FUNC2(inode))
		return -EPERM;
	if (value == NULL)
		return -EINVAL;

	new_advise = *(char *)value;
	if (new_advise & ~FADVISE_MODIFIABLE_BITS)
		return -EINVAL;

	new_advise = new_advise & FADVISE_MODIFIABLE_BITS;
	new_advise |= old_advise & ~FADVISE_MODIFIABLE_BITS;

	FUNC0(inode)->i_advise = new_advise;
	FUNC1(inode, true);
	return 0;
}