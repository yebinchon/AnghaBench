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
struct gfs2_pcpu_lkstats {int /*<<< orphan*/ * lkstats; } ;
struct TYPE_4__ {unsigned int ln_type; TYPE_1__* ln_sbd; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_stats; TYPE_2__ gl_name; int /*<<< orphan*/  gl_dstamp; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_3__ {int /*<<< orphan*/  sd_lkstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_LKS_SIRT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct gfs2_pcpu_lkstats* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(struct gfs2_glock *gl)
{
	struct gfs2_pcpu_lkstats *lks;
	const unsigned gltype = gl->gl_name.ln_type;
	ktime_t dstamp;
	s64 irt;

	FUNC4();
	dstamp = gl->gl_dstamp;
	gl->gl_dstamp = FUNC1();
	irt = FUNC3(FUNC2(gl->gl_dstamp, dstamp));
	lks = FUNC6(gl->gl_name.ln_sbd->sd_lkstats);
	FUNC0(&gl->gl_stats, GFS2_LKS_SIRT, irt);		/* Local */
	FUNC0(&lks->lkstats[gltype], GFS2_LKS_SIRT, irt);	/* Global */
	FUNC5();
}