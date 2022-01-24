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
struct hpi_response {scalar_t__ error; } ;
struct hpi_message {scalar_t__ type; int object; scalar_t__ adapter_index; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 scalar_t__ HPIMSGX_ALLADAPTERS ; 
 int /*<<< orphan*/  HPI_DEBUG_LEVEL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hpi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_response*) ; 
 int /*<<< orphan*/  HPI_ERROR_BAD_ADAPTER_NUMBER ; 
 scalar_t__ HPI_ERROR_DSP_COMMUNICATION ; 
 int /*<<< orphan*/  HPI_ERROR_INVALID_TYPE ; 
 scalar_t__ HPI_MAX_ADAPTERS ; 
#define  HPI_OBJ_ADAPTER 132 
#define  HPI_OBJ_ISTREAM 131 
#define  HPI_OBJ_MIXER 130 
#define  HPI_OBJ_OSTREAM 129 
#define  HPI_OBJ_SUBSYSTEM 128 
 scalar_t__ HPI_TYPE_REQUEST ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_message*,struct hpi_response*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hpi_response*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC6 (struct hpi_message*,struct hpi_response*,void*) ; 
 scalar_t__ logging_enabled ; 
 int /*<<< orphan*/  FUNC7 (struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC8 (struct hpi_message*,struct hpi_response*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct hpi_message*,struct hpi_response*,void*) ; 

void FUNC10(struct hpi_message *phm, struct hpi_response *phr,
	void *h_owner)
{

	if (logging_enabled)
		FUNC0(DEBUG, phm);

	if (phm->type != HPI_TYPE_REQUEST) {
		FUNC4(phr, phm->object, phm->function,
			HPI_ERROR_INVALID_TYPE);
		return;
	}

	if (phm->adapter_index >= HPI_MAX_ADAPTERS
		&& phm->adapter_index != HPIMSGX_ALLADAPTERS) {
		FUNC4(phr, phm->object, phm->function,
			HPI_ERROR_BAD_ADAPTER_NUMBER);
		return;
	}

	switch (phm->object) {
	case HPI_OBJ_SUBSYSTEM:
		FUNC9(phm, phr, h_owner);
		break;

	case HPI_OBJ_ADAPTER:
		FUNC2(phm, phr, h_owner);
		break;

	case HPI_OBJ_MIXER:
		FUNC7(phm, phr);
		break;

	case HPI_OBJ_OSTREAM:
		FUNC8(phm, phr, h_owner);
		break;

	case HPI_OBJ_ISTREAM:
		FUNC6(phm, phr, h_owner);
		break;

	default:
		FUNC5(phm, phr);
		break;
	}

	if (logging_enabled)
		FUNC1(phr);

	if (phr->error >= HPI_ERROR_DSP_COMMUNICATION) {
		FUNC3(HPI_DEBUG_LEVEL_ERROR);
		logging_enabled = 0;
	}
}