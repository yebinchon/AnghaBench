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
struct timechart {scalar_t__ skip_eagain; struct per_pid* all_data; } ;
struct per_pidcomm {int Y; double max_bytes; double total_bytes; struct per_pidcomm* next; int /*<<< orphan*/  start_time; scalar_t__ comm; struct io_sample* io_samples; int /*<<< orphan*/  end_time; int /*<<< orphan*/  display; } ;
struct per_pid {int pid; struct per_pid* next; struct per_pidcomm* all; } ;
struct io_sample {scalar_t__ type; int /*<<< orphan*/  merges; scalar_t__ err; int /*<<< orphan*/  fd; int /*<<< orphan*/  end_time; int /*<<< orphan*/  start_time; scalar_t__ bytes; struct io_sample* next; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ IOTYPE_POLL ; 
 scalar_t__ IOTYPE_READ ; 
 scalar_t__ IOTYPE_RX ; 
 scalar_t__ IOTYPE_SYNC ; 
 scalar_t__ IOTYPE_TX ; 
 scalar_t__ IOTYPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int,double,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct timechart *tchart)
{
	const char *suf;
	double bytes;
	char comm[256];
	struct per_pid *p;
	struct per_pidcomm *c;
	struct io_sample *sample;
	int Y = 1;

	p = tchart->all_data;
	while (p) {
		c = p->all;
		while (c) {
			if (!c->display) {
				c->Y = 0;
				c = c->next;
				continue;
			}

			FUNC1(Y, c->start_time, c->end_time, "process3");
			sample = c->io_samples;
			for (sample = c->io_samples; sample; sample = sample->next) {
				double h = (double)sample->bytes / c->max_bytes;

				if (tchart->skip_eagain &&
				    sample->err == -EAGAIN)
					continue;

				if (sample->err)
					h = 1;

				if (sample->type == IOTYPE_SYNC)
					FUNC2(Y,
						sample->start_time,
						sample->end_time,
						1,
						sample->err ? "error" : "sync",
						sample->fd,
						sample->err,
						sample->merges);
				else if (sample->type == IOTYPE_POLL)
					FUNC2(Y,
						sample->start_time,
						sample->end_time,
						1,
						sample->err ? "error" : "poll",
						sample->fd,
						sample->err,
						sample->merges);
				else if (sample->type == IOTYPE_READ)
					FUNC5(Y,
						sample->start_time,
						sample->end_time,
						h,
						sample->err ? "error" : "disk",
						sample->fd,
						sample->err,
						sample->merges);
				else if (sample->type == IOTYPE_WRITE)
					FUNC3(Y,
						sample->start_time,
						sample->end_time,
						h,
						sample->err ? "error" : "disk",
						sample->fd,
						sample->err,
						sample->merges);
				else if (sample->type == IOTYPE_RX)
					FUNC5(Y,
						sample->start_time,
						sample->end_time,
						h,
						sample->err ? "error" : "net",
						sample->fd,
						sample->err,
						sample->merges);
				else if (sample->type == IOTYPE_TX)
					FUNC3(Y,
						sample->start_time,
						sample->end_time,
						h,
						sample->err ? "error" : "net",
						sample->fd,
						sample->err,
						sample->merges);
			}

			suf = "";
			bytes = c->total_bytes;
			if (bytes > 1024) {
				bytes = bytes / 1024;
				suf = "K";
			}
			if (bytes > 1024) {
				bytes = bytes / 1024;
				suf = "M";
			}
			if (bytes > 1024) {
				bytes = bytes / 1024;
				suf = "G";
			}


			FUNC0(comm, "%s:%i (%3.1f %sbytes)", c->comm ?: "", p->pid, bytes, suf);
			FUNC4(Y, c->start_time, comm);

			c->Y = Y;
			Y++;
			c = c->next;
		}
		p = p->next;
	}
}