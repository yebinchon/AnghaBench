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
struct the_nilfs {int /*<<< orphan*/  ns_sbsize; struct nilfs_super_block** ns_sbp; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {scalar_t__ s_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_CRIT ; 
 int /*<<< orphan*/  NILFS_SUPER_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_super_block*,struct nilfs_super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct the_nilfs*) ; 

struct nilfs_super_block **FUNC4(struct super_block *sb,
					       int flip)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_super_block **sbp = nilfs->ns_sbp;

	/* nilfs->ns_sem must be locked by the caller. */
	if (sbp[0]->s_magic != FUNC0(NILFS_SUPER_MAGIC)) {
		if (sbp[1] &&
		    sbp[1]->s_magic == FUNC0(NILFS_SUPER_MAGIC)) {
			FUNC1(sbp[0], sbp[1], nilfs->ns_sbsize);
		} else {
			FUNC2(sb, KERN_CRIT, "superblock broke");
			return NULL;
		}
	} else if (sbp[1] &&
		   sbp[1]->s_magic != FUNC0(NILFS_SUPER_MAGIC)) {
		FUNC1(sbp[1], sbp[0], nilfs->ns_sbsize);
	}

	if (flip && sbp[1])
		FUNC3(nilfs);

	return sbp;
}