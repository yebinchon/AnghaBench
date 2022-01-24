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
struct s390_cpumsf_queue {int /*<<< orphan*/ * logfile_ctr; } ;
struct TYPE_2__ {size_t nr_queues; struct auxtrace_queue* queue_array; } ;
struct s390_cpumsf {scalar_t__ logdir; TYPE_1__ queues; int /*<<< orphan*/  use_logfile; } ;
struct perf_sample {size_t cpu; scalar_t__ raw_size; int /*<<< orphan*/  raw_data; } ;
struct auxtrace_queue {struct s390_cpumsf_queue* priv; } ;

/* Variables and functions */
 int FUNC0 (char**,char*,size_t,...) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(struct s390_cpumsf *sf,
			       struct perf_sample *sample)
{
	struct s390_cpumsf_queue *sfq;
	struct auxtrace_queue *q;
	int rc = 0;

	if (!sf->use_logfile || sf->queues.nr_queues <= sample->cpu)
		return rc;

	q = &sf->queues.queue_array[sample->cpu];
	sfq = q->priv;
	if (!sfq)		/* Queue not yet allocated */
		return rc;

	if (!sfq->logfile_ctr) {
		char *name;

		rc = (sf->logdir)
			? FUNC0(&name, "%zu/aux.ctr.%02zx",
				 sf->logdir, sample->cpu)
			: FUNC0(&name, "aux.ctr.%02zx", sample->cpu);
		if (rc > 0)
			sfq->logfile_ctr = FUNC1(name, "w");
		if (sfq->logfile_ctr == NULL) {
			FUNC4("Failed to open counter set log file %s, "
			       "continue...\n", name);
			rc = 1;
		}
		FUNC2(name);
	}

	if (sfq->logfile_ctr) {
		/* See comment above for -4 */
		size_t n = FUNC3(sample->raw_data, sample->raw_size - 4, 1,
				  sfq->logfile_ctr);
		if (n != 1) {
			FUNC4("Failed to write counter set data\n");
			rc = 1;
		}
	}
	return rc;
}