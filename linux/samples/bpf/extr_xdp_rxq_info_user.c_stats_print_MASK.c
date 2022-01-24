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
struct datarec {int dummy; } ;
struct record {struct datarec total; struct datarec* cpu; } ;
struct stats_record {struct record* rxq; struct record stats; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {unsigned int max_entries; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 double FUNC3 (struct datarec*,struct datarec*,double) ; 
 double FUNC4 (struct record*,struct record*) ; 
 double FUNC5 (struct datarec*,struct datarec*,double) ; 
 int ifindex ; 
 char* ifname ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  rx_queue_index_map ; 

__attribute__((used)) static void FUNC8(struct stats_record *stats_rec,
			struct stats_record *stats_prev,
			int action, __u32 cfg_opt)
{
	unsigned int nr_rxqs = FUNC1(rx_queue_index_map)->max_entries;
	unsigned int nr_cpus = FUNC2();
	double pps = 0, err = 0;
	struct record *rec, *prev;
	double t;
	int rxq;
	int i;

	/* Header */
	FUNC7("\nRunning XDP on dev:%s (ifindex:%d) action:%s options:%s\n",
	       ifname, ifindex, FUNC0(action), FUNC6(cfg_opt));

	/* stats_global_map */
	{
		char *fmt_rx = "%-15s %-7d %'-11.0f %'-10.0f %s\n";
		char *fm2_rx = "%-15s %-7s %'-11.0f\n";
		char *errstr = "";

		FUNC7("%-15s %-7s %-11s %-11s\n",
		       "XDP stats", "CPU", "pps", "issue-pps");

		rec  =  &stats_rec->stats;
		prev = &stats_prev->stats;
		t = FUNC4(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps = FUNC5     (r, p, t);
			err = FUNC3(r, p, t);
			if (err > 0)
				errstr = "invalid-ifindex";
			if (pps > 0)
				FUNC7(fmt_rx, "XDP-RX CPU",
					i, pps, err, errstr);
		}
		pps  = FUNC5     (&rec->total, &prev->total, t);
		err  = FUNC3(&rec->total, &prev->total, t);
		FUNC7(fm2_rx, "XDP-RX CPU", "total", pps, err);
	}

	/* rx_queue_index_map */
	FUNC7("\n%-15s %-7s %-11s %-11s\n",
	       "RXQ stats", "RXQ:CPU", "pps", "issue-pps");

	for (rxq = 0; rxq < nr_rxqs; rxq++) {
		char *fmt_rx = "%-15s %3d:%-3d %'-11.0f %'-10.0f %s\n";
		char *fm2_rx = "%-15s %3d:%-3s %'-11.0f\n";
		char *errstr = "";
		int rxq_ = rxq;

		/* Last RXQ in map catch overflows */
		if (rxq_ == nr_rxqs - 1)
			rxq_ = -1;

		rec  =  &stats_rec->rxq[rxq];
		prev = &stats_prev->rxq[rxq];
		t = FUNC4(rec, prev);
		for (i = 0; i < nr_cpus; i++) {
			struct datarec *r = &rec->cpu[i];
			struct datarec *p = &prev->cpu[i];

			pps = FUNC5     (r, p, t);
			err = FUNC3(r, p, t);
			if (err > 0) {
				if (rxq_ == -1)
					errstr = "map-overflow-RXQ";
				else
					errstr = "err";
			}
			if (pps > 0)
				FUNC7(fmt_rx, "rx_queue_index",
				       rxq_, i, pps, err, errstr);
		}
		pps  = FUNC5     (&rec->total, &prev->total, t);
		err  = FUNC3(&rec->total, &prev->total, t);
		if (pps || err)
			FUNC7(fm2_rx, "rx_queue_index", rxq_, "sum", pps, err);
	}
}