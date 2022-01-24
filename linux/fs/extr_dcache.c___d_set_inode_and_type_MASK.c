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
struct dentry {int /*<<< orphan*/  d_flags; struct inode* d_inode; } ;

/* Variables and functions */
 unsigned int DCACHE_ENTRY_TYPE ; 
 unsigned int DCACHE_FALLTHRU ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct dentry *dentry,
					  struct inode *inode,
					  unsigned type_flags)
{
	unsigned flags;

	dentry->d_inode = inode;
	flags = FUNC0(dentry->d_flags);
	flags &= ~(DCACHE_ENTRY_TYPE | DCACHE_FALLTHRU);
	flags |= type_flags;
	FUNC1(dentry->d_flags, flags);
}