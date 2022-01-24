#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* cpu; } ;
struct stats_record {TYPE_1__ stats; TYPE_3__* rxq; } ;
struct TYPE_6__ {void* cpu; } ;
struct TYPE_5__ {unsigned int max_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAIL_MEM ; 
 void* FUNC0 () ; 
 TYPE_3__* FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct stats_record* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct stats_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rx_queue_index_map ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct stats_record *FUNC7(void)
{
	unsigned int nr_rxqs = FUNC2(rx_queue_index_map)->max_entries;
	struct stats_record *rec;
	int i;

	rec = FUNC5(sizeof(*rec));
	FUNC6(rec, 0, sizeof(*rec));
	if (!rec) {
		FUNC4(stderr, "Mem alloc error\n");
		FUNC3(EXIT_FAIL_MEM);
	}
	rec->rxq = FUNC1();
	for (i = 0; i < nr_rxqs; i++)
		rec->rxq[i].cpu = FUNC0();

	rec->stats.cpu = FUNC0();
	return rec;
}