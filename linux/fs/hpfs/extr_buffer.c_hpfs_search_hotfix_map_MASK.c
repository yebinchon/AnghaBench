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
struct hpfs_sb_info {unsigned int n_hotfixes; scalar_t__* hotfix_from; scalar_t__* hotfix_to; } ;
typedef  scalar_t__ secno ;

/* Variables and functions */
 struct hpfs_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int) ; 

secno FUNC2(struct super_block *s, secno sec)
{
	unsigned i;
	struct hpfs_sb_info *sbi = FUNC0(s);
	for (i = 0; FUNC1(i < sbi->n_hotfixes); i++) {
		if (sbi->hotfix_from[i] == sec) {
			return sbi->hotfix_to[i];
		}
	}
	return sec;
}