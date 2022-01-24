#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hpi_adapter_obj {size_t index; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {TYPE_1__* adapter; int /*<<< orphan*/  gw_num_adapters; } ;
struct TYPE_5__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ adapters ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct hpi_adapter_obj *pao)
{
	if (!pao->type) {
		FUNC0(ERROR, "removing null adapter?\n");
		return;
	}

	FUNC1(&adapters);
	if (adapters.adapter[pao->index].type)
		adapters.gw_num_adapters--;
	FUNC3(&adapters.adapter[pao->index], 0, sizeof(adapters.adapter[0]));
	FUNC2(&adapters);
}