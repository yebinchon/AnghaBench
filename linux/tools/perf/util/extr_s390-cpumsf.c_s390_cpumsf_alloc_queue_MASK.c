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
struct s390_cpumsf_queue {unsigned int queue_nr; int cpu; int /*<<< orphan*/ * logfile; struct s390_cpumsf* sf; } ;
struct s390_cpumsf {int use_logfile; scalar_t__ logdir; } ;

/* Variables and functions */
 int FUNC0 (char**,char*,unsigned int,...) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 struct s390_cpumsf_queue* FUNC4 (int) ; 

__attribute__((used)) static struct s390_cpumsf_queue *
FUNC5(struct s390_cpumsf *sf, unsigned int queue_nr)
{
	struct s390_cpumsf_queue *sfq;

	sfq = FUNC4(sizeof(struct s390_cpumsf_queue));
	if (sfq == NULL)
		return NULL;

	sfq->sf = sf;
	sfq->queue_nr = queue_nr;
	sfq->cpu = -1;
	if (sf->use_logfile) {
		char *name;
		int rc;

		rc = (sf->logdir)
			? FUNC0(&name, "%u/aux.smp.%02x",
				 sf->logdir, queue_nr)
			: FUNC0(&name, "aux.smp.%02x", queue_nr);
		if (rc > 0)
			sfq->logfile = FUNC1(name, "w");
		if (sfq->logfile == NULL) {
			FUNC3("Failed to open auxiliary log file %s,"
			       "continue...\n", name);
			sf->use_logfile = false;
		}
		FUNC2(name);
	}
	return sfq;
}