#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gfs2_sbd {int /*<<< orphan*/  sd_glock_wait; int /*<<< orphan*/  sd_glock_disposal; } ;
struct TYPE_2__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_rcu; int /*<<< orphan*/  gl_node; int /*<<< orphan*/  gl_revokes; TYPE_1__ gl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_glock_dealloc ; 
 int /*<<< orphan*/  gl_hash_table ; 
 int /*<<< orphan*/  ht_parms ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_glock*) ; 

void FUNC8(struct gfs2_glock *gl)
{
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;

	FUNC0(FUNC2(&gl->gl_revokes));
	FUNC4(&gl_hash_table, &gl->gl_node, ht_parms);
	FUNC5();
	FUNC7(gl);
	FUNC3(&gl->gl_rcu, gfs2_glock_dealloc);
	if (FUNC1(&sdp->sd_glock_disposal))
		FUNC6(&sdp->sd_glock_wait);
}