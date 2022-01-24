#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hpi_response {int /*<<< orphan*/  error; } ;
struct hpi_message {scalar_t__ function; int type; int /*<<< orphan*/  object; } ;
struct hpi_adapter_obj {int dsp_crashed; } ;

/* Variables and functions */
 scalar_t__ HPI_ADAPTER_DEBUG_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  HPI_ERROR_DSP_HARDWARE ; 
 int /*<<< orphan*/  HPI_ERROR_INVALID_TYPE ; 
 int /*<<< orphan*/  HPI_ERROR_PROCESSING_MESSAGE ; 
#define  HPI_OBJ_ADAPTER 133 
#define  HPI_OBJ_CONTROL 132 
#define  HPI_OBJ_ISTREAM 131 
#define  HPI_OBJ_OSTREAM 130 
#define  HPI_OBJ_SUBSYSTEM 129 
 scalar_t__ HPI_SUBSYS_CREATE_ADAPTER ; 
#define  HPI_TYPE_REQUEST 128 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC3 (struct hpi_response*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC5 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC6 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC7 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 

__attribute__((used)) static
void FUNC8(struct hpi_adapter_obj *pao, struct hpi_message *phm,
	struct hpi_response *phr)
{
	if (pao && (pao->dsp_crashed >= 10)
		&& (phm->function != HPI_ADAPTER_DEBUG_READ)) {
		/* allow last resort debug read even after crash */
		FUNC3(phr, phm->object, phm->function,
			HPI_ERROR_DSP_HARDWARE);
		FUNC0(WARNING, " %d,%d dsp crashed.\n", phm->object,
			phm->function);
		return;
	}

	/* Init default response  */
	if (phm->function != HPI_SUBSYS_CREATE_ADAPTER)
		phr->error = HPI_ERROR_PROCESSING_MESSAGE;

	FUNC0(VERBOSE, "start of switch\n");
	switch (phm->type) {
	case HPI_TYPE_REQUEST:
		switch (phm->object) {
		case HPI_OBJ_SUBSYSTEM:
			FUNC7(pao, phm, phr);
			break;

		case HPI_OBJ_ADAPTER:
			FUNC1(pao, phm, phr);
			break;

		case HPI_OBJ_CONTROL:
			FUNC2(pao, phm, phr);
			break;

		case HPI_OBJ_OSTREAM:
			FUNC6(pao, phm, phr);
			break;

		case HPI_OBJ_ISTREAM:
			FUNC5(pao, phm, phr);
			break;

		default:
			FUNC4(pao, phm, phr);
			break;
		}
		break;

	default:
		phr->error = HPI_ERROR_INVALID_TYPE;
		break;
	}
}