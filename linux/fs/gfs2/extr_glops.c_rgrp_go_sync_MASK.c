#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct address_space {int dummy; } ;
struct gfs2_sbd {struct address_space sd_aspace; } ;
struct gfs2_rgrpd {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct TYPE_4__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {scalar_t__ gl_state; TYPE_3__ gl_lockref; struct gfs2_rgrpd* gl_object; TYPE_2__ gl_vm; int /*<<< orphan*/  gl_flags; TYPE_1__ gl_name; } ;

/* Variables and functions */
 int GFS2_LFC_RGRP_GO_SYNC ; 
 int GFS2_LOG_HEAD_FLUSH_NORMAL ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_glock*,int) ; 
 scalar_t__ LM_ST_EXCLUSIVE ; 
 int FUNC1 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,struct gfs2_glock*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC7 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct gfs2_glock *gl)
{
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	struct address_space *mapping = &sdp->sd_aspace;
	struct gfs2_rgrpd *rgd;
	int error;

	FUNC8(&gl->gl_lockref.lock);
	rgd = gl->gl_object;
	if (rgd)
		FUNC6(rgd);
	FUNC9(&gl->gl_lockref.lock);

	if (!FUNC10(GLF_DIRTY, &gl->gl_flags))
		return;
	FUNC0(gl, gl->gl_state != LM_ST_EXCLUSIVE);

	FUNC5(sdp, gl, GFS2_LOG_HEAD_FLUSH_NORMAL |
		       GFS2_LFC_RGRP_GO_SYNC);
	FUNC2(mapping, gl->gl_vm.start, gl->gl_vm.end);
	error = FUNC1(mapping, gl->gl_vm.start, gl->gl_vm.end);
	FUNC7(mapping, error);
	FUNC3(gl);

	FUNC8(&gl->gl_lockref.lock);
	rgd = gl->gl_object;
	if (rgd)
		FUNC4(rgd);
	FUNC9(&gl->gl_lockref.lock);
}