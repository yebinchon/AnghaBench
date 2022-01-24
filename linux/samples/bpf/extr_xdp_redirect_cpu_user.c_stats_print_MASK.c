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
struct datarec {int dummy; } ;
struct record {struct datarec total; struct datarec* cpu; } ;
struct stats_record {struct record exception; struct record redir_err; struct record kthread; struct record* enq; struct record rx_cnt; } ;

/* Variables and functions */
 int MAX_CPUS ; 
 unsigned int FUNC0 () ; 
 double FUNC1 (struct datarec*,struct datarec*,double) ; 
 double FUNC2 (struct datarec*,struct datarec*,double) ; 
 double FUNC3 (struct record*,struct record*) ; 
 double FUNC4 (struct datarec*,struct datarec*,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC7(struct stats_record *stats_rec,
			struct stats_record *stats_prev,
			char *prog_name)
{
	unsigned int nr_cpus = FUNC0();
	double pps = 0, drop = 0, err = 0;
	struct record *rec, *prev;
	int to_cpu;
	double t;
	int i;

	/* Header */
	FUNC6("Running XDP/eBPF prog_name:%s\n", prog_name);
	FUNC6("%-15s %-7s %-14s %-11s %-9s\n",
	       "XDP-cpumap", "CPU:to", "pps", "drop-pps", "extra-info");

	/* XDP rx_cnt */
	{
		char *fmt_rx = "%-15s %-7d %'-14.0f %'-11.0f %'-10.0f %s\n";
		char *fm2_rx = "%-15s %-7s %'-14.0f %'-11.0f\n";
		char *errstr = "";

		rec  = &stats_rec->rx_cnt;
		prev = &stats_prev->rx_cnt;
		t = FUNC3(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps = FUNC4(r, p, t);
			drop = FUNC1(r, p, t);
			err  = FUNC2(r, p, t);
			if (err > 0)
				errstr = "cpu-dest/err";
			if (pps > 0)
				FUNC6(fmt_rx, "XDP-RX",
					i, pps, drop, err, errstr);
		}
		pps  = FUNC4(&rec->total, &prev->total, t);
		drop = FUNC1(&rec->total, &prev->total, t);
		err  = FUNC2(&rec->total, &prev->total, t);
		FUNC6(fm2_rx, "XDP-RX", "total", pps, drop);
	}

	/* cpumap enqueue stats */
	for (to_cpu = 0; to_cpu < MAX_CPUS; to_cpu++) {
		char *fmt = "%-15s %3d:%-3d %'-14.0f %'-11.0f %'-10.2f %s\n";
		char *fm2 = "%-15s %3s:%-3d %'-14.0f %'-11.0f %'-10.2f %s\n";
		char *errstr = "";

		rec  =  &stats_rec->enq[to_cpu];
		prev = &stats_prev->enq[to_cpu];
		t = FUNC3(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps  = FUNC4(r, p, t);
			drop = FUNC1(r, p, t);
			err  = FUNC2(r, p, t);
			if (err > 0) {
				errstr = "bulk-average";
				err = pps / err; /* calc average bulk size */
			}
			if (pps > 0)
				FUNC6(fmt, "cpumap-enqueue",
				       i, to_cpu, pps, drop, err, errstr);
		}
		pps = FUNC4(&rec->total, &prev->total, t);
		if (pps > 0) {
			drop = FUNC1(&rec->total, &prev->total, t);
			err  = FUNC2(&rec->total, &prev->total, t);
			if (err > 0) {
				errstr = "bulk-average";
				err = pps / err; /* calc average bulk size */
			}
			FUNC6(fm2, "cpumap-enqueue",
			       "sum", to_cpu, pps, drop, err, errstr);
		}
	}

	/* cpumap kthread stats */
	{
		char *fmt_k = "%-15s %-7d %'-14.0f %'-11.0f %'-10.0f %s\n";
		char *fm2_k = "%-15s %-7s %'-14.0f %'-11.0f %'-10.0f %s\n";
		char *e_str = "";

		rec  = &stats_rec->kthread;
		prev = &stats_prev->kthread;
		t = FUNC3(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps  = FUNC4(r, p, t);
			drop = FUNC1(r, p, t);
			err  = FUNC2(r, p, t);
			if (err > 0)
				e_str = "sched";
			if (pps > 0)
				FUNC6(fmt_k, "cpumap_kthread",
				       i, pps, drop, err, e_str);
		}
		pps = FUNC4(&rec->total, &prev->total, t);
		drop = FUNC1(&rec->total, &prev->total, t);
		err  = FUNC2(&rec->total, &prev->total, t);
		if (err > 0)
			e_str = "sched-sum";
		FUNC6(fm2_k, "cpumap_kthread", "total", pps, drop, err, e_str);
	}

	/* XDP redirect err tracepoints (very unlikely) */
	{
		char *fmt_err = "%-15s %-7d %'-14.0f %'-11.0f\n";
		char *fm2_err = "%-15s %-7s %'-14.0f %'-11.0f\n";

		rec  = &stats_rec->redir_err;
		prev = &stats_prev->redir_err;
		t = FUNC3(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps  = FUNC4(r, p, t);
			drop = FUNC1(r, p, t);
			if (pps > 0)
				FUNC6(fmt_err, "redirect_err", i, pps, drop);
		}
		pps = FUNC4(&rec->total, &prev->total, t);
		drop = FUNC1(&rec->total, &prev->total, t);
		FUNC6(fm2_err, "redirect_err", "total", pps, drop);
	}

	/* XDP general exception tracepoints */
	{
		char *fmt_err = "%-15s %-7d %'-14.0f %'-11.0f\n";
		char *fm2_err = "%-15s %-7s %'-14.0f %'-11.0f\n";

		rec  = &stats_rec->exception;
		prev = &stats_prev->exception;
		t = FUNC3(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps  = FUNC4(r, p, t);
			drop = FUNC1(r, p, t);
			if (pps > 0)
				FUNC6(fmt_err, "xdp_exception", i, pps, drop);
		}
		pps = FUNC4(&rec->total, &prev->total, t);
		drop = FUNC1(&rec->total, &prev->total, t);
		FUNC6(fm2_err, "xdp_exception", "total", pps, drop);
	}

	FUNC6("\n");
	FUNC5(stdout);
}