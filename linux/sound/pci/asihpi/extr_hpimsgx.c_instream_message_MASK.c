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
struct hpi_response {int dummy; } ;
struct hpi_message {scalar_t__ obj_index; size_t adapter_index; int function; } ;
struct TYPE_2__ {scalar_t__ num_instreams; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ERROR_INVALID_OBJ_INDEX ; 
#define  HPI_ISTREAM_CLOSE 129 
#define  HPI_ISTREAM_OPEN 128 
 int /*<<< orphan*/  HPI_OBJ_ISTREAM ; 
 TYPE_1__* aDAPTER_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hpi_response*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_message*,struct hpi_response*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct hpi_message*,struct hpi_response*,void*) ; 

__attribute__((used)) static void FUNC4(struct hpi_message *phm,
	struct hpi_response *phr, void *h_owner)
{
	if (phm->obj_index >= aDAPTER_INFO[phm->adapter_index].num_instreams) {
		FUNC0(phr, HPI_OBJ_ISTREAM, phm->function,
			HPI_ERROR_INVALID_OBJ_INDEX);
		return;
	}

	switch (phm->function) {
	case HPI_ISTREAM_OPEN:
		FUNC3(phm, phr, h_owner);
		break;
	case HPI_ISTREAM_CLOSE:
		FUNC2(phm, phr, h_owner);
		break;
	default:
		FUNC1(phm, phr);
		break;
	}
}