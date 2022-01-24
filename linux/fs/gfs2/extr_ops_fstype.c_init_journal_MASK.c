#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_4__ {scalar_t__ ar_spectator; } ;
struct TYPE_3__ {int ls_jid; scalar_t__ ls_first; } ;
struct gfs2_sbd {unsigned int sd_journals; int sd_log_idle; int /*<<< orphan*/  sd_jindex; struct gfs2_holder sd_journal_gh; TYPE_2__ sd_args; struct gfs2_holder sd_jinode_gh; int /*<<< orphan*/  sd_freeze_work; int /*<<< orphan*/  sd_flags; struct gfs2_jdesc* sd_jdesc; TYPE_1__ sd_lockstruct; int /*<<< orphan*/  sd_log_blks_free; int /*<<< orphan*/  sd_log_thresh2; int /*<<< orphan*/  sd_log_thresh1; int /*<<< orphan*/  sd_log_blks_needed; int /*<<< orphan*/  sd_master_dir; } ;
struct gfs2_jdesc {int jd_blocks; int /*<<< orphan*/  jd_jid; int /*<<< orphan*/  jd_inode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;

/* Variables and functions */
 int EUSERS ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int GL_EXACT ; 
 int GL_NOCACHE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int LM_FLAG_NOEXP ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDF_JOURNAL_CHECKED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct gfs2_sbd*,struct gfs2_jdesc*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_sbd*,char*,...) ; 
 int /*<<< orphan*/  gfs2_freeze_func ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_holder*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct gfs2_holder*) ; 
 int FUNC11 (struct gfs2_sbd*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct gfs2_holder*) ; 
 int FUNC12 (struct gfs2_jdesc*) ; 
 void* FUNC13 (struct gfs2_sbd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_sbd*) ; 
 int FUNC15 (struct gfs2_sbd*,struct gfs2_holder*) ; 
 int FUNC16 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  gfs2_journal_glops ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_sbd*,struct gfs2_jdesc*) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_sbd*) ; 
 int FUNC20 (struct gfs2_jdesc*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct gfs2_sbd *sdp, int undo)
{
	struct inode *master = FUNC7(sdp->sd_master_dir);
	struct gfs2_holder ji_gh;
	struct gfs2_inode *ip;
	int jindex = 1;
	int error = 0;

	if (undo) {
		jindex = 0;
		goto fail_jinode_gh;
	}

	sdp->sd_jindex = FUNC17(master, "jindex");
	if (FUNC2(sdp->sd_jindex)) {
		FUNC8(sdp, "can't lookup journal index: %d\n", error);
		return FUNC3(sdp->sd_jindex);
	}

	/* Load in the journal index special file */

	error = FUNC15(sdp, &ji_gh);
	if (error) {
		FUNC8(sdp, "can't read journal index: %d\n", error);
		goto fail;
	}

	error = -EUSERS;
	if (!FUNC16(sdp)) {
		FUNC8(sdp, "no journals!\n");
		goto fail_jindex;
	}

	FUNC5(&sdp->sd_log_blks_needed, 0);
	if (sdp->sd_args.ar_spectator) {
		sdp->sd_jdesc = FUNC13(sdp, 0);
		FUNC5(&sdp->sd_log_blks_free, sdp->sd_jdesc->jd_blocks);
		FUNC5(&sdp->sd_log_thresh1, 2*sdp->sd_jdesc->jd_blocks/5);
		FUNC5(&sdp->sd_log_thresh2, 4*sdp->sd_jdesc->jd_blocks/5);
	} else {
		if (sdp->sd_lockstruct.ls_jid >= FUNC16(sdp)) {
			FUNC8(sdp, "can't mount journal #%u\n",
			       sdp->sd_lockstruct.ls_jid);
			FUNC8(sdp, "there are only %u journals (0 - %u)\n",
			       FUNC16(sdp),
			       FUNC16(sdp) - 1);
			goto fail_jindex;
		}
		sdp->sd_jdesc = FUNC13(sdp, sdp->sd_lockstruct.ls_jid);

		error = FUNC11(sdp, sdp->sd_lockstruct.ls_jid,
					  &gfs2_journal_glops,
					  LM_ST_EXCLUSIVE, LM_FLAG_NOEXP,
					  &sdp->sd_journal_gh);
		if (error) {
			FUNC8(sdp, "can't acquire journal glock: %d\n", error);
			goto fail_jindex;
		}

		ip = FUNC0(sdp->sd_jdesc->jd_inode);
		error = FUNC10(ip->i_gl, LM_ST_SHARED,
					   LM_FLAG_NOEXP | GL_EXACT | GL_NOCACHE,
					   &sdp->sd_jinode_gh);
		if (error) {
			FUNC8(sdp, "can't acquire journal inode glock: %d\n",
			       error);
			goto fail_journal_gh;
		}

		error = FUNC12(sdp->sd_jdesc);
		if (error) {
			FUNC8(sdp, "my journal (%u) is bad: %d\n",
			       sdp->sd_jdesc->jd_jid, error);
			goto fail_jinode_gh;
		}
		FUNC5(&sdp->sd_log_blks_free, sdp->sd_jdesc->jd_blocks);
		FUNC5(&sdp->sd_log_thresh1, 2*sdp->sd_jdesc->jd_blocks/5);
		FUNC5(&sdp->sd_log_thresh2, 4*sdp->sd_jdesc->jd_blocks/5);

		/* Map the extents for this journal's blocks */
		FUNC18(sdp, sdp->sd_jdesc);
	}
	FUNC23(sdp, FUNC4(&sdp->sd_log_blks_free));

	if (sdp->sd_lockstruct.ls_first) {
		unsigned int x;
		for (x = 0; x < sdp->sd_journals; x++) {
			struct gfs2_jdesc *jd = FUNC13(sdp, x);

			if (sdp->sd_args.ar_spectator) {
				error = FUNC6(sdp, jd);
				if (error)
					goto fail_jinode_gh;
				continue;
			}
			error = FUNC20(jd, true);
			if (error) {
				FUNC8(sdp, "error recovering journal %u: %d\n",
				       x, error);
				goto fail_jinode_gh;
			}
		}

		FUNC19(sdp);
	} else if (!sdp->sd_args.ar_spectator) {
		error = FUNC20(sdp->sd_jdesc, true);
		if (error) {
			FUNC8(sdp, "error recovering my journal: %d\n", error);
			goto fail_jinode_gh;
		}
	}

	sdp->sd_log_idle = 1;
	FUNC22(SDF_JOURNAL_CHECKED, &sdp->sd_flags);
	FUNC9(&ji_gh);
	jindex = 0;
	FUNC1(&sdp->sd_freeze_work, gfs2_freeze_func);
	return 0;

fail_jinode_gh:
	if (!sdp->sd_args.ar_spectator)
		FUNC9(&sdp->sd_jinode_gh);
fail_journal_gh:
	if (!sdp->sd_args.ar_spectator)
		FUNC9(&sdp->sd_journal_gh);
fail_jindex:
	FUNC14(sdp);
	if (jindex)
		FUNC9(&ji_gh);
fail:
	FUNC21(sdp->sd_jindex);
	return error;
}