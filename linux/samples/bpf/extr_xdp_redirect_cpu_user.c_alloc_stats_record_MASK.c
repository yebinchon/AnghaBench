#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* cpu; } ;
struct TYPE_7__ {void* cpu; } ;
struct TYPE_6__ {void* cpu; } ;
struct TYPE_10__ {void* cpu; } ;
struct stats_record {TYPE_4__* enq; TYPE_3__ exception; TYPE_2__ kthread; TYPE_1__ redir_err; TYPE_5__ rx_cnt; } ;
struct TYPE_9__ {void* cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAIL_MEM ; 
 int MAX_CPUS ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct stats_record* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct stats_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct stats_record *FUNC5(void)
{
	struct stats_record *rec;
	int i;

	rec = FUNC3(sizeof(*rec));
	FUNC4(rec, 0, sizeof(*rec));
	if (!rec) {
		FUNC2(stderr, "Mem alloc error\n");
		FUNC1(EXIT_FAIL_MEM);
	}
	rec->rx_cnt.cpu    = FUNC0();
	rec->redir_err.cpu = FUNC0();
	rec->kthread.cpu   = FUNC0();
	rec->exception.cpu = FUNC0();
	for (i = 0; i < MAX_CPUS; i++)
		rec->enq[i].cpu = FUNC0();

	return rec;
}