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
struct hpi_response_header {int dummy; } ;
struct hpi_response {int size; int /*<<< orphan*/  error; } ;
struct hpi_message {scalar_t__ object; scalar_t__ function; int type; int /*<<< orphan*/  adapter_index; } ;
struct hpi_adapter_res {int dummy; } ;
struct hpi_adapter_obj {int dsp_crashed; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPI_ERROR_BAD_ADAPTER_NUMBER ; 
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
 int /*<<< orphan*/  FUNC1 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 struct hpi_adapter_obj* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hpi_response*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC6 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC7 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC8 (struct hpi_message*,struct hpi_response*) ; 

void FUNC9(struct hpi_message *phm, struct hpi_response *phr)
{
	struct hpi_adapter_obj *pao = NULL;

	if (phm->object != HPI_OBJ_SUBSYSTEM) {
		pao = FUNC3(phm->adapter_index);
		if (!pao) {
			FUNC4(phr, phm->object, phm->function,
				HPI_ERROR_BAD_ADAPTER_NUMBER);
			FUNC0(DEBUG, "invalid adapter index: %d \n",
				phm->adapter_index);
			return;
		}

		/* Don't even try to communicate with crashed DSP */
		if (pao->dsp_crashed >= 10) {
			FUNC4(phr, phm->object, phm->function,
				HPI_ERROR_DSP_HARDWARE);
			FUNC0(DEBUG, "adapter %d dsp crashed\n",
				phm->adapter_index);
			return;
		}
	}
	/* Init default response including the size field */
	if (phm->function != HPI_SUBSYS_CREATE_ADAPTER)
		FUNC4(phr, phm->object, phm->function,
			HPI_ERROR_PROCESSING_MESSAGE);

	switch (phm->type) {
	case HPI_TYPE_REQUEST:
		switch (phm->object) {
		case HPI_OBJ_SUBSYSTEM:
			FUNC8(phm, phr);
			break;

		case HPI_OBJ_ADAPTER:
			phr->size =
				sizeof(struct hpi_response_header) +
				sizeof(struct hpi_adapter_res);
			FUNC1(pao, phm, phr);
			break;

		case HPI_OBJ_CONTROL:
			FUNC2(pao, phm, phr);
			break;

		case HPI_OBJ_OSTREAM:
			FUNC7(pao, phm, phr);
			break;

		case HPI_OBJ_ISTREAM:
			FUNC6(pao, phm, phr);
			break;

		default:
			FUNC5(pao, phm, phr);
			break;
		}
		break;

	default:
		phr->error = HPI_ERROR_INVALID_TYPE;
		break;
	}
}