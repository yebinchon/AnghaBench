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
struct rq {unsigned int nr_running; TYPE_1__* rd; } ;
struct TYPE_2__ {int /*<<< orphan*/  overload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*) ; 

__attribute__((used)) static inline void FUNC3(struct rq *rq, unsigned count)
{
	unsigned prev_nr = rq->nr_running;

	rq->nr_running = prev_nr + count;

#ifdef CONFIG_SMP
	if (prev_nr < 2 && rq->nr_running >= 2) {
		if (!READ_ONCE(rq->rd->overload))
			WRITE_ONCE(rq->rd->overload, 1);
	}
#endif

	FUNC2(rq);
}