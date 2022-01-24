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
struct TYPE_2__ {unsigned int nr_queues; int /*<<< orphan*/ * queue_array; } ;
struct cs_etm_auxtrace {TYPE_1__ queues; int /*<<< orphan*/  machine; scalar_t__ kernel_start; } ;

/* Variables and functions */
 int FUNC0 (struct cs_etm_auxtrace*,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cs_etm_auxtrace *etm)
{
	unsigned int i;
	int ret;

	if (!etm->kernel_start)
		etm->kernel_start = FUNC1(etm->machine);

	for (i = 0; i < etm->queues.nr_queues; i++) {
		ret = FUNC0(etm, &etm->queues.queue_array[i], i);
		if (ret)
			return ret;
	}

	return 0;
}