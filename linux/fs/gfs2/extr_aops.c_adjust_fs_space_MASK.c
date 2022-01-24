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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct gfs2_statfs_change_host {scalar_t__ sc_total; } ;
struct gfs2_sbd {scalar_t__ sd_rindex_uptodate; int /*<<< orphan*/  sd_statfs_spin; struct gfs2_statfs_change_host sd_statfs_local; struct gfs2_statfs_change_host sd_statfs_master; int /*<<< orphan*/  sd_sc_inode; int /*<<< orphan*/  sd_statfs_inode; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int RES_STATFS ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*,char*,unsigned long long) ; 
 scalar_t__ FUNC4 (struct gfs2_inode*,struct buffer_head**) ; 
 scalar_t__ FUNC5 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_statfs_change_host*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct gfs2_sbd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_sbd*,struct buffer_head*,struct buffer_head*) ; 

void FUNC13(struct inode *inode)
{
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_inode *m_ip = FUNC0(sdp->sd_statfs_inode);
	struct gfs2_inode *l_ip = FUNC0(sdp->sd_sc_inode);
	struct gfs2_statfs_change_host *m_sc = &sdp->sd_statfs_master;
	struct gfs2_statfs_change_host *l_sc = &sdp->sd_statfs_local;
	struct buffer_head *m_bh, *l_bh;
	u64 fs_total, new_free;

	if (FUNC8(sdp, 2 * RES_STATFS, 0) != 0)
		return;

	/* Total up the file system space, according to the latest rindex. */
	fs_total = FUNC5(sdp);
	if (FUNC4(m_ip, &m_bh) != 0)
		goto out;

	FUNC10(&sdp->sd_statfs_spin);
	FUNC7(m_sc, m_bh->b_data +
			      sizeof(struct gfs2_dinode));
	if (fs_total > (m_sc->sc_total + l_sc->sc_total))
		new_free = fs_total - (m_sc->sc_total + l_sc->sc_total);
	else
		new_free = 0;
	FUNC11(&sdp->sd_statfs_spin);
	FUNC3(sdp, "File system extended by %llu blocks.\n",
		(unsigned long long)new_free);
	FUNC6(sdp, new_free, new_free, 0);

	if (FUNC4(l_ip, &l_bh) != 0)
		goto out2;
	FUNC12(sdp, m_bh, l_bh);
	FUNC2(l_bh);
out2:
	FUNC2(m_bh);
out:
	sdp->sd_rindex_uptodate = 0;
	FUNC9(sdp);
}