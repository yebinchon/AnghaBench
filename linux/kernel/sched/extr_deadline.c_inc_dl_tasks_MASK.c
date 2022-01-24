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
typedef  int /*<<< orphan*/  u64 ;
struct sched_dl_entity {int /*<<< orphan*/  deadline; } ;
struct dl_rq {int /*<<< orphan*/  dl_nr_running; } ;
struct TYPE_2__ {int prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC4 (struct dl_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sched_dl_entity*,struct dl_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct dl_rq*) ; 

__attribute__((used)) static inline
void FUNC7(struct sched_dl_entity *dl_se, struct dl_rq *dl_rq)
{
	int prio = FUNC3(dl_se)->prio;
	u64 deadline = dl_se->deadline;

	FUNC0(!FUNC2(prio));
	dl_rq->dl_nr_running++;
	FUNC1(FUNC6(dl_rq), 1);

	FUNC4(dl_rq, deadline);
	FUNC5(dl_se, dl_rq);
}