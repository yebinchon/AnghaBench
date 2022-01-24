#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ls_ops; } ;
struct gfs2_sbd {TYPE_2__ sd_lockstruct; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_holders; TYPE_4__ gl_lockref; TYPE_3__ gl_name; } ;
struct address_space {scalar_t__ nrpages; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* lm_put_lock ) (struct gfs2_glock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gfs2_glock*,int) ; 
 struct address_space* FUNC1 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_glock*) ; 

__attribute__((used)) static void FUNC8(struct gfs2_glock *gl)
{
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	struct address_space *mapping = FUNC1(gl);

	FUNC4(&gl->gl_lockref);

	FUNC2(gl);
	FUNC5(&gl->gl_lockref.lock);
	FUNC0(gl, !FUNC3(&gl->gl_holders));
	FUNC0(gl, mapping && mapping->nrpages);
	FUNC7(gl);
	sdp->sd_lockstruct.ls_ops->lm_put_lock(gl);
}