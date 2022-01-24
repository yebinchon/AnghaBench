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
typedef  int /*<<< orphan*/  u64 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_gl; } ;
struct gfs2_rbm {struct gfs2_rgrpd* rgd; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESTALE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 scalar_t__ FUNC0 (int) ; 
 struct gfs2_rgrpd* FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC4 (struct gfs2_rbm*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct gfs2_rbm*,int) ; 

int FUNC6(struct gfs2_sbd *sdp, u64 no_addr, unsigned int type)
{
	struct gfs2_rgrpd *rgd;
	struct gfs2_holder rgd_gh;
	struct gfs2_rbm rbm;
	int error = -EINVAL;

	rgd = FUNC1(sdp, no_addr, 1);
	if (!rgd)
		goto fail;

	error = FUNC3(rgd->rd_gl, LM_ST_SHARED, 0, &rgd_gh);
	if (error)
		goto fail;

	rbm.rgd = rgd;
	error = FUNC4(&rbm, no_addr);
	if (FUNC0(error))
		goto fail;

	if (FUNC5(&rbm, false) != type)
		error = -ESTALE;

	FUNC2(&rgd_gh);
fail:
	return error;
}