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
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct super_block*,void*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  sb_set_mnt_opts ; 

int FUNC1(struct super_block *sb,
				void *mnt_opts,
				unsigned long kern_flags,
				unsigned long *set_kern_flags)
{
	return FUNC0(sb_set_mnt_opts,
				mnt_opts ? -EOPNOTSUPP : 0, sb,
				mnt_opts, kern_flags, set_kern_flags);
}