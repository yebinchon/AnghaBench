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
struct sched_dl_entity {int /*<<< orphan*/  deadline; } ;
struct dl_rq {int /*<<< orphan*/  dl_nr_running; } ;
struct TYPE_2__ {int prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dl_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_dl_entity*,struct dl_rq*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* FUNC4 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC5 (struct dl_rq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline
void FUNC7(struct sched_dl_entity *dl_se, struct dl_rq *dl_rq)
{
	int prio = FUNC4(dl_se)->prio;

	FUNC0(!FUNC3(prio));
	FUNC0(!dl_rq->dl_nr_running);
	dl_rq->dl_nr_running--;
	FUNC6(FUNC5(dl_rq), 1);

	FUNC1(dl_rq, dl_se->deadline);
	FUNC2(dl_se, dl_rq);
}