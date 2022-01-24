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
struct ufs_sb_private_info {unsigned int s_ncg; } ;
struct ufs_sb_info {unsigned int* s_cgno; unsigned int s_cg_loaded; struct ufs_cg_private_info** s_ucpi; struct ufs_sb_private_info* s_uspi; } ;
struct ufs_cg_private_info {int dummy; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned int UFS_CGNO_EMPTY ; 
 int UFS_MAX_GROUP_LOADED ; 
 struct ufs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,unsigned int,unsigned int) ; 

struct ufs_cg_private_info * FUNC5 (
	struct super_block * sb, unsigned cgno)
{
	struct ufs_sb_info * sbi = FUNC1(sb);
	struct ufs_sb_private_info * uspi;
	struct ufs_cg_private_info * ucpi;
	unsigned cg, i, j;

	FUNC0("ENTER, cgno %u\n", cgno);

	uspi = sbi->s_uspi;
	if (cgno >= uspi->s_ncg) {
		FUNC2 (sb, "ufs_load_cylinder", "internal error, high number of cg");
		return NULL;
	}
	/*
	 * Cylinder group number cg it in cache and it was last used
	 */
	if (sbi->s_cgno[0] == cgno) {
		FUNC0("EXIT\n");
		return sbi->s_ucpi[0];
	}
	/*
	 * Number of cylinder groups is not higher than UFS_MAX_GROUP_LOADED
	 */
	if (uspi->s_ncg <= UFS_MAX_GROUP_LOADED) {
		if (sbi->s_cgno[cgno] != UFS_CGNO_EMPTY) {
			if (sbi->s_cgno[cgno] != cgno) {
				FUNC2 (sb, "ufs_load_cylinder", "internal error, wrong number of cg in cache");
				FUNC0("EXIT (FAILED)\n");
				return NULL;
			}
			else {
				FUNC0("EXIT\n");
				return sbi->s_ucpi[cgno];
			}
		} else {
			FUNC4 (sb, cgno, cgno);
			FUNC0("EXIT\n");
			return sbi->s_ucpi[cgno];
		}
	}
	/*
	 * Cylinder group number cg is in cache but it was not last used, 
	 * we will move to the first position
	 */
	for (i = 0; i < sbi->s_cg_loaded && sbi->s_cgno[i] != cgno; i++);
	if (i < sbi->s_cg_loaded && sbi->s_cgno[i] == cgno) {
		cg = sbi->s_cgno[i];
		ucpi = sbi->s_ucpi[i];
		for (j = i; j > 0; j--) {
			sbi->s_cgno[j] = sbi->s_cgno[j-1];
			sbi->s_ucpi[j] = sbi->s_ucpi[j-1];
		}
		sbi->s_cgno[0] = cg;
		sbi->s_ucpi[0] = ucpi;
	/*
	 * Cylinder group number cg is not in cache, we will read it from disk
	 * and put it to the first position
	 */
	} else {
		if (sbi->s_cg_loaded < UFS_MAX_GROUP_LOADED)
			sbi->s_cg_loaded++;
		else
			FUNC3 (sb, UFS_MAX_GROUP_LOADED-1);
		ucpi = sbi->s_ucpi[sbi->s_cg_loaded - 1];
		for (j = sbi->s_cg_loaded - 1; j > 0; j--) {
			sbi->s_cgno[j] = sbi->s_cgno[j-1];
			sbi->s_ucpi[j] = sbi->s_ucpi[j-1];
		}
		sbi->s_ucpi[0] = ucpi;
		FUNC4 (sb, cgno, 0);
	}
	FUNC0("EXIT\n");
	return sbi->s_ucpi[0];
}