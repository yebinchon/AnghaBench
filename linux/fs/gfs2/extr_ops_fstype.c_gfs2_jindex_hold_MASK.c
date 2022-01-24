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
struct qstr {char* name; int /*<<< orphan*/  len; int /*<<< orphan*/  hash; } ;
struct gfs2_sbd {int sd_journals; int /*<<< orphan*/  sd_jindex_mutex; int /*<<< orphan*/  sd_jindex_spin; int /*<<< orphan*/  sd_jindex_list; int /*<<< orphan*/  sd_jindex; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_list; scalar_t__ jd_jid; int /*<<< orphan*/  jd_inode; int /*<<< orphan*/  jd_work; int /*<<< orphan*/  jd_revoke_list; int /*<<< orphan*/  extent_list; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct qstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct qstr*,int) ; 
 int /*<<< orphan*/  gfs2_recover_func ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_jdesc*) ; 
 struct gfs2_jdesc* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 

__attribute__((used)) static int FUNC18(struct gfs2_sbd *sdp, struct gfs2_holder *ji_gh)
{
	struct gfs2_inode *dip = FUNC0(sdp->sd_jindex);
	struct qstr name;
	char buf[20];
	struct gfs2_jdesc *jd;
	int error;

	name.name = buf;

	FUNC13(&sdp->sd_jindex_mutex);

	for (;;) {
		error = FUNC8(dip->i_gl, LM_ST_SHARED, 0, ji_gh);
		if (error)
			break;

		name.len = FUNC17(buf, "journal%u", sdp->sd_journals);
		name.hash = FUNC6(name.name, name.len);

		error = FUNC5(sdp->sd_jindex, &name, NULL);
		if (error == -ENOENT) {
			error = 0;
			break;
		}

		FUNC7(ji_gh);

		if (error)
			break;

		error = -ENOMEM;
		jd = FUNC11(sizeof(struct gfs2_jdesc), GFP_KERNEL);
		if (!jd)
			break;

		FUNC1(&jd->extent_list);
		FUNC1(&jd->jd_revoke_list);

		FUNC2(&jd->jd_work, gfs2_recover_func);
		jd->jd_inode = FUNC9(sdp->sd_jindex, &name, 1);
		if (FUNC3(jd->jd_inode)) {
			if (!jd->jd_inode)
				error = -ENOENT;
			else
				error = FUNC4(jd->jd_inode);
			FUNC10(jd);
			break;
		}

		FUNC15(&sdp->sd_jindex_spin);
		jd->jd_jid = sdp->sd_journals++;
		FUNC12(&jd->jd_list, &sdp->sd_jindex_list);
		FUNC16(&sdp->sd_jindex_spin);
	}

	FUNC14(&sdp->sd_jindex_mutex);

	return error;
}