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
 scalar_t__ FUNC1 (struct dentry*) ; 
 int S_IFLNK ; 
 struct dentry* FUNC2 (char const*,int,struct dentry*,void*,char*,int /*<<< orphan*/ *,struct inode_operations const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct dentry *FUNC4(const char *name,
					  struct dentry *parent,
					  const char *target,
					  void *private,
					  const struct inode_operations *iops)
{
	struct dentry *dent;
	char *link = NULL;

	if (target) {
		if (!link)
			return FUNC0(-ENOMEM);
	}
	dent = FUNC2(name, S_IFLNK | 0444, parent, private, link, NULL,
			   iops);
	if (FUNC1(dent))
		FUNC3(link);

	return dent;
}