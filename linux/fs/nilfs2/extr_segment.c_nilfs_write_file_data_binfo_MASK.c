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
struct nilfs_binfo_v {int dummy; } ;
union nilfs_binfo {struct nilfs_binfo_v bi_v; } ;
struct nilfs_segsum_pointer {int dummy; } ;
struct nilfs_sc_info {int dummy; } ;

/* Variables and functions */
 struct nilfs_binfo_v* FUNC0 (struct nilfs_sc_info*,struct nilfs_segsum_pointer*,int) ; 

__attribute__((used)) static void FUNC1(struct nilfs_sc_info *sci,
					struct nilfs_segsum_pointer *ssp,
					union nilfs_binfo *binfo)
{
	struct nilfs_binfo_v *binfo_v = FUNC0(
		sci, ssp, sizeof(*binfo_v));
	*binfo_v = binfo->bi_v;
}