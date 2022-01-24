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
struct inode_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int S_IFLNK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (char const*,int,struct dentry*,char*,int /*<<< orphan*/ *,struct inode_operations const*) ; 

struct dentry *FUNC5(const char *name,
					 struct dentry *parent,
					 const char *target,
					 const struct inode_operations *iops)
{
	struct dentry *dent;
	char *link = NULL;

	if (target) {
		link = FUNC3(target, GFP_KERNEL);
		if (!link)
			return FUNC0(-ENOMEM);
	}
	dent = FUNC4(name, S_IFLNK | 0444, parent,
					link, NULL, iops);
	if (FUNC1(dent))
		FUNC2(link);

	return dent;
}