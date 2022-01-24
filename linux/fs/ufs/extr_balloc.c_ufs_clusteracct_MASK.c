#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ufs_sb_private_info {int s_contigsumsize; } ;
struct ufs_cg_private_info {int c_nclusterblks; scalar_t__ c_clustersumoff; int /*<<< orphan*/  c_clusteroff; } ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  __fs32 ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ufs_cg_private_info*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct super_block * sb,
	struct ufs_cg_private_info * ucpi, unsigned blkno, int cnt)
{
	struct ufs_sb_private_info * uspi;
	int i, start, end, forw, back;
	
	uspi = FUNC1(sb)->s_uspi;
	if (uspi->s_contigsumsize <= 0)
		return;

	if (cnt > 0)
		FUNC8(FUNC0(ucpi), ucpi->c_clusteroff, blkno);
	else
		FUNC4(FUNC0(ucpi), ucpi->c_clusteroff, blkno);

	/*
	 * Find the size of the cluster going forward.
	 */
	start = blkno + 1;
	end = start + uspi->s_contigsumsize;
	if ( end >= ucpi->c_nclusterblks)
		end = ucpi->c_nclusterblks;
	i = FUNC6 (FUNC0(ucpi), ucpi->c_clusteroff, end, start);
	if (i > end)
		i = end;
	forw = i - start;
	
	/*
	 * Find the size of the cluster going backward.
	 */
	start = blkno - 1;
	end = start - uspi->s_contigsumsize;
	if (end < 0 ) 
		end = -1;
	i = FUNC5 (FUNC0(ucpi), ucpi->c_clusteroff, start, end);
	if ( i < end) 
		i = end;
	back = start - i;
	
	/*
	 * Account for old cluster and the possibly new forward and
	 * back clusters.
	 */
	i = back + forw + 1;
	if (i > uspi->s_contigsumsize)
		i = uspi->s_contigsumsize;
	FUNC2(sb, (__fs32*)FUNC7(FUNC0(ucpi), ucpi->c_clustersumoff + (i << 2)), cnt);
	if (back > 0)
		FUNC3(sb, (__fs32*)FUNC7(FUNC0(ucpi), ucpi->c_clustersumoff + (back << 2)), cnt);
	if (forw > 0)
		FUNC3(sb, (__fs32*)FUNC7(FUNC0(ucpi), ucpi->c_clustersumoff + (forw << 2)), cnt);
}