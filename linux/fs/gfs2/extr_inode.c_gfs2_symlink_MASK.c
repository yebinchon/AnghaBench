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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int FUNC1 (struct inode*,struct dentry*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, struct dentry *dentry,
			const char *symname)
{
	unsigned int size;

	size = FUNC3(symname);
	if (size >= FUNC2(FUNC0(dir)))
		return -ENAMETOOLONG;

	return FUNC1(dir, dentry, NULL, S_IFLNK | S_IRWXUGO, 0, symname, size, 0);
}