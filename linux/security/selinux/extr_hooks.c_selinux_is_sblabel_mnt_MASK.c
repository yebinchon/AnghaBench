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
struct superblock_security_struct {int behavior; } ;
struct super_block {struct superblock_security_struct* s_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  SECURITY_FS_USE_GENFS 134 
 int SECURITY_FS_USE_MAX ; 
#define  SECURITY_FS_USE_MNTPOINT 133 
#define  SECURITY_FS_USE_NATIVE 132 
#define  SECURITY_FS_USE_NONE 131 
#define  SECURITY_FS_USE_TASK 130 
#define  SECURITY_FS_USE_TRANS 129 
#define  SECURITY_FS_USE_XATTR 128 
 int FUNC1 (struct super_block*) ; 

__attribute__((used)) static int FUNC2(struct super_block *sb)
{
	struct superblock_security_struct *sbsec = sb->s_security;

	/*
	 * IMPORTANT: Double-check logic in this function when adding a new
	 * SECURITY_FS_USE_* definition!
	 */
	FUNC0(SECURITY_FS_USE_MAX != 7);

	switch (sbsec->behavior) {
	case SECURITY_FS_USE_XATTR:
	case SECURITY_FS_USE_TRANS:
	case SECURITY_FS_USE_TASK:
	case SECURITY_FS_USE_NATIVE:
		return 1;

	case SECURITY_FS_USE_GENFS:
		return FUNC1(sb);

	/* Never allow relabeling on context mounts */
	case SECURITY_FS_USE_MNTPOINT:
	case SECURITY_FS_USE_NONE:
	default:
		return 0;
	}
}