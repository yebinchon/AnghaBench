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
typedef  int uint32_t ;
struct lm_lockstruct {int ls_first; int /*<<< orphan*/  ls_dlm; scalar_t__ ls_recover_flags; int /*<<< orphan*/ * ls_lvb_bits; int /*<<< orphan*/ * ls_recover_result; int /*<<< orphan*/ * ls_recover_submit; scalar_t__ ls_recover_size; scalar_t__ ls_recover_block; scalar_t__ ls_recover_start; scalar_t__ ls_recover_mount; int /*<<< orphan*/  ls_recover_spin; } ;
struct gfs2_sbd {scalar_t__ sd_flags; int /*<<< orphan*/  sd_control_work; struct lm_lockstruct sd_lockstruct; } ;
typedef  int /*<<< orphan*/  cluster ;

/* Variables and functions */
 int /*<<< orphan*/  DFL_FIRST_MOUNT ; 
 int /*<<< orphan*/  DFL_NO_DLM_OPS ; 
 int DLM_LSFL_FS ; 
 int DLM_LSFL_NEWEXCL ; 
 int EINVAL ; 
 int /*<<< orphan*/  GDLM_LVB_SIZE ; 
 int GFS2_LOCKNAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDF_NOJOURNALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (struct gfs2_sbd*) ; 
 int FUNC3 (char const*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct gfs2_sbd*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lm_lockstruct*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,char*) ; 
 int /*<<< orphan*/  gdlm_lockspace_ops ; 
 int /*<<< orphan*/  gfs2_control_func ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC11 (struct gfs2_sbd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (char const*,char) ; 
 scalar_t__ FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct gfs2_sbd *sdp, const char *table)
{
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;
	char cluster[GFS2_LOCKNAME_LEN];
	const char *fsname;
	uint32_t flags;
	int error, ops_result;

	/*
	 * initialize everything
	 */

	FUNC0(&sdp->sd_control_work, gfs2_control_func);
	FUNC13(&ls->ls_recover_spin);
	ls->ls_recover_flags = 0;
	ls->ls_recover_mount = 0;
	ls->ls_recover_start = 0;
	ls->ls_recover_block = 0;
	ls->ls_recover_size = 0;
	ls->ls_recover_submit = NULL;
	ls->ls_recover_result = NULL;
	ls->ls_lvb_bits = NULL;

	error = FUNC11(sdp, NULL, 0);
	if (error)
		goto fail;

	/*
	 * prepare dlm_new_lockspace args
	 */

	fsname = FUNC14(table, ':');
	if (!fsname) {
		FUNC7(sdp, "no fsname found\n");
		error = -EINVAL;
		goto fail_free;
	}
	FUNC9(cluster, 0, sizeof(cluster));
	FUNC8(cluster, table, FUNC15(table) - FUNC15(fsname));
	fsname++;

	flags = DLM_LSFL_FS | DLM_LSFL_NEWEXCL;

	/*
	 * create/join lockspace
	 */

	error = FUNC3(fsname, cluster, flags, GDLM_LVB_SIZE,
				  &gdlm_lockspace_ops, sdp, &ops_result,
				  &ls->ls_dlm);
	if (error) {
		FUNC6(sdp, "dlm_new_lockspace error %d\n", error);
		goto fail_free;
	}

	if (ops_result < 0) {
		/*
		 * dlm does not support ops callbacks,
		 * old dlm_controld/gfs_controld are used, try without ops.
		 */
		FUNC7(sdp, "dlm lockspace ops not used\n");
		FUNC5(ls);
		FUNC10(DFL_NO_DLM_OPS, &ls->ls_recover_flags);
		return 0;
	}

	if (!FUNC16(SDF_NOJOURNALID, &sdp->sd_flags)) {
		FUNC6(sdp, "dlm lockspace ops disallow jid preset\n");
		error = -EINVAL;
		goto fail_release;
	}

	/*
	 * control_mount() uses control_lock to determine first mounter,
	 * and for later mounts, waits for any recoveries to be cleared.
	 */

	error = FUNC2(sdp);
	if (error) {
		FUNC6(sdp, "mount control error %d\n", error);
		goto fail_release;
	}

	ls->ls_first = !!FUNC16(DFL_FIRST_MOUNT, &ls->ls_recover_flags);
	FUNC1(SDF_NOJOURNALID, &sdp->sd_flags);
	FUNC12();
	FUNC17(&sdp->sd_flags, SDF_NOJOURNALID);
	return 0;

fail_release:
	FUNC4(ls->ls_dlm, 2);
fail_free:
	FUNC5(ls);
fail:
	return error;
}