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
struct xattr_handler {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xattr_handler const*,char const*) ; 

__attribute__((used)) static int
FUNC3(const struct xattr_handler *handler, struct dentry *unused,
	 struct inode *inode, const char *name, void *buffer, size_t size)
{
	if (!FUNC1(inode->i_sb))
		return -EOPNOTSUPP;
	return FUNC0(inode, FUNC2(handler, name),
				  buffer, size);
}