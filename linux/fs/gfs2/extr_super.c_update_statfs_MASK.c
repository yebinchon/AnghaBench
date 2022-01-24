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
struct gfs2_statfs_change_host {scalar_t__ sc_dinodes; scalar_t__ sc_free; scalar_t__ sc_total; } ;
struct gfs2_statfs_change {int dummy; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_statfs_spin; struct gfs2_statfs_change_host sd_statfs_local; struct gfs2_statfs_change_host sd_statfs_master; int /*<<< orphan*/  sd_sc_inode; int /*<<< orphan*/  sd_statfs_inode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {struct gfs2_statfs_change_host* b_data; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_statfs_change_host*,struct gfs2_statfs_change_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_statfs_change_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct gfs2_sbd *sdp, struct buffer_head *m_bh,
		   struct buffer_head *l_bh)
{
	struct gfs2_inode *m_ip = FUNC0(sdp->sd_statfs_inode);
	struct gfs2_inode *l_ip = FUNC0(sdp->sd_sc_inode);
	struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
	struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;

	FUNC2(l_ip->i_gl, l_bh);
	FUNC2(m_ip->i_gl, m_bh);

	FUNC4(&sdp->sd_statfs_spin);
	m_sc->sc_total += l_sc->sc_total;
	m_sc->sc_free += l_sc->sc_free;
	m_sc->sc_dinodes += l_sc->sc_dinodes;
	FUNC3(l_sc, 0, sizeof(struct gfs2_statfs_change));
	FUNC3(l_bh->b_data + sizeof(struct gfs2_dinode),
	       0, sizeof(struct gfs2_statfs_change));
	FUNC1(m_sc, m_bh->b_data + sizeof(struct gfs2_dinode));
	FUNC5(&sdp->sd_statfs_spin);
}