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
struct gfs2_statfs_change_host {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_gl; } ;
struct gfs2_holder {int /*<<< orphan*/  gh_gl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GL_ASYNC ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  current ; 
 struct gfs2_rgrpd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_holder*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC3 (struct gfs2_holder*) ; 
 int FUNC4 (struct gfs2_holder*) ; 
 scalar_t__ FUNC5 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 
 struct gfs2_rgrpd* FUNC8 (struct gfs2_sbd*) ; 
 struct gfs2_rgrpd* FUNC9 (struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_holder*) ; 
 struct gfs2_holder* FUNC11 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_statfs_change_host*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct gfs2_rgrpd*,struct gfs2_statfs_change_host*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(struct gfs2_sbd *sdp, struct gfs2_statfs_change_host *sc)
{
	struct gfs2_rgrpd *rgd_next;
	struct gfs2_holder *gha, *gh;
	unsigned int slots = 64;
	unsigned int x;
	int done;
	int error = 0, err;

	FUNC12(sc, 0, sizeof(struct gfs2_statfs_change_host));
	gha = FUNC11(slots, sizeof(struct gfs2_holder), GFP_KERNEL);
	if (!gha)
		return -ENOMEM;
	for (x = 0; x < slots; x++)
		FUNC6(gha + x);

	rgd_next = FUNC8(sdp);

	for (;;) {
		done = 1;

		for (x = 0; x < slots; x++) {
			gh = gha + x;

			if (FUNC5(gh) && FUNC3(gh)) {
				err = FUNC4(gh);
				if (err) {
					FUNC7(gh);
					error = err;
				} else {
					if (!error) {
						struct gfs2_rgrpd *rgd =
							FUNC0(gh->gh_gl);

						error = FUNC14(rgd, sc);
					}
					FUNC1(gh);
				}
			}

			if (FUNC5(gh))
				done = 0;
			else if (rgd_next && !error) {
				error = FUNC2(rgd_next->rd_gl,
							   LM_ST_SHARED,
							   GL_ASYNC,
							   gh);
				rgd_next = FUNC9(rgd_next);
				done = 0;
			}

			if (FUNC13(current))
				error = -ERESTARTSYS;
		}

		if (done)
			break;

		FUNC15();
	}

	FUNC10(gha);
	return error;
}