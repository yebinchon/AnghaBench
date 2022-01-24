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
struct stats_record {int /*<<< orphan*/ * rxq; int /*<<< orphan*/  stats; } ;
struct TYPE_2__ {int max_entries; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_queue_index_map ; 
 int /*<<< orphan*/  stats_global_map ; 

__attribute__((used)) static void FUNC3(struct stats_record *rec)
{
	int fd, i, max_rxqs;

	fd = FUNC1(stats_global_map);
	FUNC2(fd, 0, &rec->stats);

	fd = FUNC1(rx_queue_index_map);
	max_rxqs = FUNC0(rx_queue_index_map)->max_entries;
	for (i = 0; i < max_rxqs; i++)
		FUNC2(fd, i, &rec->rxq[i]);
}