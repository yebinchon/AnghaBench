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
struct gfs2_glock {int /*<<< orphan*/  gl_stats; TYPE_2__ gl_name; int /*<<< orphan*/  gl_dstamp; int /*<<< orphan*/  gl_flags; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_3__ {int /*<<< orphan*/  sd_lkstats; } ;

/* Variables and functions */
 unsigned int GFS2_LKS_SRTT ; 
 unsigned int GFS2_LKS_SRTTB ; 
 int /*<<< orphan*/  GLF_BLOCKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gfs2_pcpu_lkstats* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_glock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC9(struct gfs2_glock *gl)
{
	struct gfs2_pcpu_lkstats *lks;
	const unsigned gltype = gl->gl_name.ln_type;
	unsigned index = FUNC6(GLF_BLOCKING, &gl->gl_flags) ?
			 GFS2_LKS_SRTTB : GFS2_LKS_SRTT;
	s64 rtt;

	FUNC4();
	rtt = FUNC3(FUNC2(FUNC1(), gl->gl_dstamp));
	lks = FUNC7(gl->gl_name.ln_sbd->sd_lkstats);
	FUNC0(&gl->gl_stats, index, rtt);		/* Local */
	FUNC0(&lks->lkstats[gltype], index, rtt);	/* Global */
	FUNC5();

	FUNC8(gl, rtt);
}