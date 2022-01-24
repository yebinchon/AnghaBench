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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 unsigned int LOOKUP_CREATE ; 
 unsigned int LOOKUP_RCU ; 
 unsigned int LOOKUP_RENAME_TARGET ; 
 int NFS_MOUNT_LOOKUP_CACHE_NONEG ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct dentry*,unsigned int) ; 

__attribute__((used)) static inline
int FUNC2(struct inode *dir, struct dentry *dentry,
		       unsigned int flags)
{
	if (flags & (LOOKUP_CREATE | LOOKUP_RENAME_TARGET))
		return 0;
	if (FUNC0(dir)->flags & NFS_MOUNT_LOOKUP_CACHE_NONEG)
		return 1;
	return !FUNC1(dir, dentry, flags & LOOKUP_RCU);
}