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
struct vxfs_sb_info {int /*<<< orphan*/  vsi_iext; } ;
struct vxfs_oltilist {int /*<<< orphan*/ * olt_iext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vxfs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct vxfs_oltilist *ilistp, struct vxfs_sb_info *infp)
{
	FUNC0(infp->vsi_iext);
	infp->vsi_iext = FUNC1(infp, ilistp->olt_iext[0]);
}