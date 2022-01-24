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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct xattr_handler const*,char const*) ; 

__attribute__((used)) static int
FUNC4(const struct xattr_handler *handler, struct dentry *unused,
	    struct inode *inode, const char *name, void *buffer, size_t size)
{
	if (!FUNC1(CAP_SYS_ADMIN) || FUNC0(inode))
		return -EPERM;

	return FUNC2(inode, FUNC3(handler, name),
				  buffer, size);
}