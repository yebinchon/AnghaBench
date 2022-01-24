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
struct nilfs_btree_path {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 scalar_t__ NILFS_BMAP_INVALID_PTR ; 
 scalar_t__ FUNC0 (struct nilfs_bmap const*) ; 
 scalar_t__ FUNC1 (struct nilfs_bmap const*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nilfs_bmap const*,struct nilfs_btree_path const*) ; 

__attribute__((used)) static __u64 FUNC3(const struct nilfs_bmap *btree,
				       const struct nilfs_btree_path *path,
				       __u64 key)
{
	__u64 ptr;

	ptr = FUNC1(btree, key);
	if (ptr != NILFS_BMAP_INVALID_PTR)
		/* sequential access */
		return ptr;

	ptr = FUNC2(btree, path);
	if (ptr != NILFS_BMAP_INVALID_PTR)
		/* near */
		return ptr;

	/* block group */
	return FUNC0(btree);
}