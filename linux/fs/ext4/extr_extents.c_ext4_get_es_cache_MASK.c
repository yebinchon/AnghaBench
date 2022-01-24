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
struct fiemap_extent_info {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct fiemap_extent_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext4_fill_es_cache_info ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct inode *inode, struct fiemap_extent_info *fieinfo,
		      __u64 start, __u64 len)
{
	if (FUNC3(inode)) {
		int has_inline;

		FUNC2(&FUNC0(inode)->xattr_sem);
		has_inline = FUNC3(inode);
		FUNC4(&FUNC0(inode)->xattr_sem);
		if (has_inline)
			return 0;
	}

	return FUNC1(inode, fieinfo, start, len,
			    ext4_fill_es_cache_info);
}