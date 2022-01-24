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
struct TYPE_4__ {void* issue; void* dropped; void* processed; } ;
struct record {TYPE_2__ total; TYPE_1__* cpu; int /*<<< orphan*/  timestamp; } ;
struct datarec {scalar_t__ issue; scalar_t__ dropped; scalar_t__ processed; } ;
typedef  void* __u64 ;
typedef  int __u32 ;
struct TYPE_3__ {scalar_t__ issue; scalar_t__ dropped; scalar_t__ processed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int*,struct datarec*) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool FUNC4(int fd, __u32 key, struct record *rec)
{
	/* For percpu maps, userspace gets a value per possible CPU */
	unsigned int nr_cpus = FUNC1();
	struct datarec values[nr_cpus];
	__u64 sum_processed = 0;
	__u64 sum_dropped = 0;
	__u64 sum_issue = 0;
	int i;

	if ((FUNC0(fd, &key, values)) != 0) {
		FUNC2(stderr,
			"ERR: bpf_map_lookup_elem failed key:0x%X\n", key);
		return false;
	}
	/* Get time as close as possible to reading map contents */
	rec->timestamp = FUNC3();

	/* Record and sum values from each CPU */
	for (i = 0; i < nr_cpus; i++) {
		rec->cpu[i].processed = values[i].processed;
		sum_processed        += values[i].processed;
		rec->cpu[i].dropped = values[i].dropped;
		sum_dropped        += values[i].dropped;
		rec->cpu[i].issue = values[i].issue;
		sum_issue        += values[i].issue;
	}
	rec->total.processed = sum_processed;
	rec->total.dropped   = sum_dropped;
	rec->total.issue     = sum_issue;
	return true;
}