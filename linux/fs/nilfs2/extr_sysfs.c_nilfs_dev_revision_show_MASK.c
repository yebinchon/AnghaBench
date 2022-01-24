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
typedef  int u32 ;
typedef  int u16 ;
struct the_nilfs {struct nilfs_super_block** ns_sbp; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_minor_rev_level; int /*<<< orphan*/  s_rev_level; } ;
struct nilfs_dev_attr {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static
ssize_t FUNC3(struct nilfs_dev_attr *attr,
				struct the_nilfs *nilfs,
				char *buf)
{
	struct nilfs_super_block **sbp = nilfs->ns_sbp;
	u32 major = FUNC1(sbp[0]->s_rev_level);
	u16 minor = FUNC0(sbp[0]->s_minor_rev_level);

	return FUNC2(buf, PAGE_SIZE, "%d.%d\n", major, minor);
}