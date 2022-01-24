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
struct address_space {int dummy; } ;
struct gfs2_sbd {struct address_space sd_aspace; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct TYPE_4__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_vm; int /*<<< orphan*/  gl_ail_count; TYPE_2__ gl_name; } ;

/* Variables and functions */
 int DIO_METADATA ; 
 int /*<<< orphan*/  GFS2_RDF_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int) ; 
 struct gfs2_rgrpd* FUNC3 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gfs2_glock *gl, int flags)
{
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	struct address_space *mapping = &sdp->sd_aspace;
	struct gfs2_rgrpd *rgd = FUNC3(gl);

	if (rgd)
		FUNC4(rgd);

	FUNC0(!(flags & DIO_METADATA));
	FUNC2(sdp, !FUNC1(&gl->gl_ail_count));
	FUNC5(mapping, gl->gl_vm.start, gl->gl_vm.end);

	if (rgd)
		rgd->rd_flags &= ~GFS2_RDF_UPTODATE;
}