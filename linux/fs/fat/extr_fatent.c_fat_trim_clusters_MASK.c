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
struct super_block {int dummy; } ;
struct msdos_sb_info {int sec_per_clus; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct msdos_sb_info*,int) ; 
 int FUNC2 (struct super_block*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, u32 clus, u32 nr_clus)
{
	struct msdos_sb_info *sbi = FUNC0(sb);
	return FUNC2(sb, FUNC1(sbi, clus),
				nr_clus * sbi->sec_per_clus, GFP_NOFS, 0);
}