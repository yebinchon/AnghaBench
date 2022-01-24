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
struct gfs2_rgrpd {int rd_flags; struct gfs2_glock* rd_gl; } ;
struct gfs2_glock {scalar_t__ gl_state; int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_holders; } ;

/* Variables and functions */
 int GFS2_RDF_PREFERRED ; 
 int /*<<< orphan*/  GLF_DEMOTE ; 
 int /*<<< orphan*/  GLF_DEMOTE_IN_PROGRESS ; 
 scalar_t__ LM_ST_UNLOCKED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct gfs2_rgrpd *rgd)
{
	struct gfs2_glock *gl = rgd->rd_gl;

	if (gl->gl_state != LM_ST_UNLOCKED && FUNC0(&gl->gl_holders) &&
	    !FUNC1(GLF_DEMOTE_IN_PROGRESS, &gl->gl_flags) &&
	    !FUNC1(GLF_DEMOTE, &gl->gl_flags))
		return 1;
	if (rgd->rd_flags & GFS2_RDF_PREFERRED)
		return 1;
	return 0;
}