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
typedef  int xfs_inofree_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int XFS_INODES_PER_CHUNK ; 

__attribute__((used)) static inline xfs_inofree_t FUNC1(int i, int n)
{
	return ((n >= XFS_INODES_PER_CHUNK ? 0 : FUNC0(n)) - 1) << i;
}