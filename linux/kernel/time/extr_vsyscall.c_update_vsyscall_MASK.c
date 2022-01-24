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
typedef  int u64 ;
struct vdso_timestamp {int nsec; scalar_t__ sec; } ;
struct vdso_data {struct vdso_timestamp* basetime; void* clock_mode; } ;
struct TYPE_4__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int xtime_nsec; int shift; } ;
struct timekeeper {TYPE_2__ wall_to_monotonic; TYPE_1__ tkr_mono; scalar_t__ xtime_sec; } ;

/* Variables and functions */
 size_t CLOCK_MONOTONIC_COARSE ; 
 size_t CLOCK_REALTIME_COARSE ; 
 size_t CS_HRES_COARSE ; 
 size_t CS_RAW ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 void* FUNC0 (struct timekeeper*) ; 
 struct vdso_data* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vdso_data*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct vdso_data*,struct timekeeper*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct vdso_data*,struct timekeeper*) ; 
 int /*<<< orphan*/  FUNC7 (struct vdso_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct vdso_data*) ; 

void FUNC9(struct timekeeper *tk)
{
	struct vdso_data *vdata = FUNC1();
	struct vdso_timestamp *vdso_ts;
	u64 nsec;

	if (FUNC3()) {
		/*
		 * Some architectures might want to skip the update of the
		 * data page.
		 */
		return;
	}

	/* copy vsyscall data */
	FUNC7(vdata);

	vdata[CS_HRES_COARSE].clock_mode	= FUNC0(tk);
	vdata[CS_RAW].clock_mode		= FUNC0(tk);

	/* CLOCK_REALTIME_COARSE */
	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME_COARSE];
	vdso_ts->sec	= tk->xtime_sec;
	vdso_ts->nsec	= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;

	/* CLOCK_MONOTONIC_COARSE */
	vdso_ts		= &vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC_COARSE];
	vdso_ts->sec	= tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
	nsec		= tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
	nsec		= nsec + tk->wall_to_monotonic.tv_nsec;
	vdso_ts->sec	+= FUNC5(nsec, NSEC_PER_SEC, &vdso_ts->nsec);

	FUNC6(vdata, tk);

	FUNC4(vdata, tk);

	FUNC8(vdata);

	FUNC2(vdata);
}