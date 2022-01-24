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
struct nilfs_snapshot_attr {int dummy; } ;
struct nilfs_root {int /*<<< orphan*/  inodes_count; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,unsigned long long) ; 

__attribute__((used)) static ssize_t
FUNC2(struct nilfs_snapshot_attr *attr,
				 struct nilfs_root *root, char *buf)
{
	return FUNC1(buf, PAGE_SIZE, "%llu\n",
			(unsigned long long)FUNC0(&root->inodes_count));
}