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
struct xfs_mount {int /*<<< orphan*/  m_attr_geo; } ;
struct xfs_buf {int /*<<< orphan*/  b_addr; struct xfs_mount* b_mount; } ;
struct xfs_attr3_icleaf_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xfs_attr3_icleaf_hdr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xfs_buf*,struct xfs_attr3_icleaf_hdr*,struct xfs_buf*,struct xfs_attr3_icleaf_hdr*) ; 

int
FUNC2(
	struct xfs_buf	*leaf1_bp,
	struct xfs_buf	*leaf2_bp)
{
	struct xfs_attr3_icleaf_hdr ichdr1;
	struct xfs_attr3_icleaf_hdr ichdr2;
	struct xfs_mount *mp = leaf1_bp->b_mount;

	FUNC0(mp->m_attr_geo, &ichdr1, leaf1_bp->b_addr);
	FUNC0(mp->m_attr_geo, &ichdr2, leaf2_bp->b_addr);
	return FUNC1(leaf1_bp, &ichdr1, leaf2_bp, &ichdr2);
}