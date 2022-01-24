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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct super_block const*,struct super_block*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  sb_clone_mnt_opts ; 

int FUNC1(const struct super_block *oldsb,
				struct super_block *newsb,
				unsigned long kern_flags,
				unsigned long *set_kern_flags)
{
	return FUNC0(sb_clone_mnt_opts, 0, oldsb, newsb,
				kern_flags, set_kern_flags);
}