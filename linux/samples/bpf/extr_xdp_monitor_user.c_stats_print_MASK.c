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
struct u64rec {int dummy; } ;
struct datarec {int dummy; } ;
struct record {struct datarec total; struct datarec* cpu; } ;
struct stats_record {struct record xdp_devmap_xmit; struct record xdp_cpumap_kthread; struct record* xdp_cpumap_enqueue; struct record_u64* xdp_exception; struct record_u64* xdp_redirect; } ;
struct record_u64 {struct u64rec total; struct u64rec* cpu; } ;

/* Variables and functions */
 int MAX_CPUS ; 
 int REDIR_ERROR ; 
 int REDIR_RES_MAX ; 
 int XDP_ACTION_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 () ; 
 double FUNC2 (struct datarec*,struct datarec*,double) ; 
 double FUNC3 (struct datarec*,struct datarec*,double) ; 
 double FUNC4 (struct datarec*,struct datarec*,double) ; 
 double FUNC5 (struct record*,struct record*) ; 
 double FUNC6 (struct record_u64*,struct record_u64*) ; 
 double FUNC7 (struct datarec*,struct datarec*,double) ; 
 double FUNC8 (struct u64rec*,struct u64rec*,double) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void FUNC11(struct stats_record *stats_rec,
			struct stats_record *stats_prev,
			bool err_only)
{
	unsigned int nr_cpus = FUNC1();
	int rec_i = 0, i, to_cpu;
	double t = 0, pps = 0;

	/* Header */
	FUNC10("%-15s %-7s %-12s %-12s %-9s\n",
	       "XDP-event", "CPU:to", "pps", "drop-pps", "extra-info");

	/* tracepoint: xdp:xdp_redirect_* */
	if (err_only)
		rec_i = REDIR_ERROR;

	for (; rec_i < REDIR_RES_MAX; rec_i++) {
		struct record_u64 *rec, *prev;
		char *fmt1 = "%-15s %-7d %'-12.0f %'-12.0f %s\n";
		char *fmt2 = "%-15s %-7s %'-12.0f %'-12.0f %s\n";

		rec  =  &stats_rec->xdp_redirect[rec_i];
		prev = &stats_prev->xdp_redirect[rec_i];
		t = FUNC6(rec, prev);

		for (i = 0; i < nr_cpus; i++) {
			struct u64rec *r = &rec->cpu[i];
			struct u64rec *p = &prev->cpu[i];

			pps = FUNC8(r, p, t);
			if (pps > 0)
				FUNC10(fmt1, "XDP_REDIRECT", i,
				       rec_i ? 0.0: pps, rec_i ? pps : 0.0,
				       FUNC9(rec_i));
		}
		pps = FUNC8(&rec->total, &prev->total, t);
		FUNC10(fmt2, "XDP_REDIRECT", "total",
		       rec_i ? 0.0: pps, rec_i ? pps : 0.0, FUNC9(rec_i));
	}

	/* tracepoint: xdp:xdp_exception */
	for (rec_i = 0; rec_i < XDP_ACTION_MAX; rec_i++) {
		struct record_u64 *rec, *prev;
		char *fmt1 = "%-15s %-7d %'-12.0f %'-12.0f %s\n";
		char *fmt2 = "%-15s %-7s %'-12.0f %'-12.0f %s\n";

		rec  =  &stats_rec->xdp_exception[rec_i];
		prev = &stats_prev->xdp_exception[rec_i];
		t = FUNC6(rec, prev);

		for (i = 0; i < nr_cpus; i++) {
			struct u64rec *r = &rec->cpu[i];
			struct u64rec *p = &prev->cpu[i];

			pps = FUNC8(r, p, t);
			if (pps > 0)
				FUNC10(fmt1, "Exception", i,
				       0.0, pps, FUNC0(rec_i));
		}
		pps = FUNC8(&rec->total, &prev->total, t);
		if (pps > 0)
			FUNC10(fmt2, "Exception", "total",
			       0.0, pps, FUNC0(rec_i));
	}

	/* cpumap enqueue stats */
	for (to_cpu = 0; to_cpu < MAX_CPUS; to_cpu++) {
		char *fmt1 = "%-15s %3d:%-3d %'-12.0f %'-12.0f %'-10.2f %s\n";
		char *fmt2 = "%-15s %3s:%-3d %'-12.0f %'-12.0f %'-10.2f %s\n";
		struct record *rec, *prev;
		char *info_str = "";
		double drop, info;

		rec  =  &stats_rec->xdp_cpumap_enqueue[to_cpu];
		prev = &stats_prev->xdp_cpumap_enqueue[to_cpu];
		t = FUNC5(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps  = FUNC7(r, p, t);
			drop = FUNC2(r, p, t);
			info = FUNC4(r, p, t);
			if (info > 0) {
				info_str = "bulk-average";
				info = pps / info; /* calc average bulk size */
			}
			if (pps > 0)
				FUNC10(fmt1, "cpumap-enqueue",
				       i, to_cpu, pps, drop, info, info_str);
		}
		pps = FUNC7(&rec->total, &prev->total, t);
		if (pps > 0) {
			drop = FUNC2(&rec->total, &prev->total, t);
			info = FUNC4(&rec->total, &prev->total, t);
			if (info > 0) {
				info_str = "bulk-average";
				info = pps / info; /* calc average bulk size */
			}
			FUNC10(fmt2, "cpumap-enqueue",
			       "sum", to_cpu, pps, drop, info, info_str);
		}
	}

	/* cpumap kthread stats */
	{
		char *fmt1 = "%-15s %-7d %'-12.0f %'-12.0f %'-10.0f %s\n";
		char *fmt2 = "%-15s %-7s %'-12.0f %'-12.0f %'-10.0f %s\n";
		struct record *rec, *prev;
		double drop, info;
		char *i_str = "";

		rec  =  &stats_rec->xdp_cpumap_kthread;
		prev = &stats_prev->xdp_cpumap_kthread;
		t = FUNC5(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps  = FUNC7(r, p, t);
			drop = FUNC2(r, p, t);
			info = FUNC4(r, p, t);
			if (info > 0)
				i_str = "sched";
			if (pps > 0 || drop > 0)
				FUNC10(fmt1, "cpumap-kthread",
				       i, pps, drop, info, i_str);
		}
		pps = FUNC7(&rec->total, &prev->total, t);
		drop = FUNC2(&rec->total, &prev->total, t);
		info = FUNC4(&rec->total, &prev->total, t);
		if (info > 0)
			i_str = "sched-sum";
		FUNC10(fmt2, "cpumap-kthread", "total", pps, drop, info, i_str);
	}

	/* devmap ndo_xdp_xmit stats */
	{
		char *fmt1 = "%-15s %-7d %'-12.0f %'-12.0f %'-10.2f %s %s\n";
		char *fmt2 = "%-15s %-7s %'-12.0f %'-12.0f %'-10.2f %s %s\n";
		struct record *rec, *prev;
		double drop, info, err;
		char *i_str = "";
		char *err_str = "";

		rec  =  &stats_rec->xdp_devmap_xmit;
		prev = &stats_prev->xdp_devmap_xmit;
		t = FUNC5(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps  = FUNC7(r, p, t);
			drop = FUNC2(r, p, t);
			info = FUNC4(r, p, t);
			err  = FUNC3(r, p, t);
			if (info > 0) {
				i_str = "bulk-average";
				info = (pps+drop) / info; /* calc avg bulk */
			}
			if (err > 0)
				err_str = "drv-err";
			if (pps > 0 || drop > 0)
				FUNC10(fmt1, "devmap-xmit",
				       i, pps, drop, info, i_str, err_str);
		}
		pps = FUNC7(&rec->total, &prev->total, t);
		drop = FUNC2(&rec->total, &prev->total, t);
		info = FUNC4(&rec->total, &prev->total, t);
		err  = FUNC3(&rec->total, &prev->total, t);
		if (info > 0) {
			i_str = "bulk-average";
			info = (pps+drop) / info; /* calc avg bulk */
		}
		if (err > 0)
			err_str = "drv-err";
		FUNC10(fmt2, "devmap-xmit", "total", pps, drop,
		       info, i_str, err_str);
	}

	FUNC10("\n");
}