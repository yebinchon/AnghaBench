#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  num_adapters; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct hpi_response {int /*<<< orphan*/  error; TYPE_2__ u; } ;
struct hpi_message {int function; } ;
struct TYPE_7__ {int /*<<< orphan*/  gw_num_adapters; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ERROR_INVALID_FUNC ; 
 int /*<<< orphan*/  HPI_OBJ_SUBSYSTEM ; 
#define  HPI_SUBSYS_CLOSE 134 
#define  HPI_SUBSYS_CREATE_ADAPTER 133 
#define  HPI_SUBSYS_DRIVER_LOAD 132 
#define  HPI_SUBSYS_DRIVER_UNLOAD 131 
#define  HPI_SUBSYS_GET_ADAPTER 130 
#define  HPI_SUBSYS_GET_NUM_ADAPTERS 129 
#define  HPI_SUBSYS_OPEN 128 
 TYPE_3__ adapters ; 
 int /*<<< orphan*/  FUNC0 (struct hpi_response*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct hpi_message *phm, struct hpi_response *phr)
{
	FUNC0(phr, HPI_OBJ_SUBSYSTEM, phm->function, 0);

	switch (phm->function) {
	case HPI_SUBSYS_OPEN:
	case HPI_SUBSYS_CLOSE:
	case HPI_SUBSYS_DRIVER_UNLOAD:
		break;
	case HPI_SUBSYS_DRIVER_LOAD:
		FUNC3();
		FUNC1(&adapters);
		break;
	case HPI_SUBSYS_GET_ADAPTER:
		FUNC2(phm, phr);
		break;
	case HPI_SUBSYS_GET_NUM_ADAPTERS:
		phr->u.s.num_adapters = adapters.gw_num_adapters;
		break;
	case HPI_SUBSYS_CREATE_ADAPTER:
		break;
	default:
		phr->error = HPI_ERROR_INVALID_FUNC;
		break;
	}
}