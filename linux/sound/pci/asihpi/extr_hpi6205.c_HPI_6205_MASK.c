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
struct hpi_response {int dummy; } ;
struct hpi_message {scalar_t__ object; int /*<<< orphan*/  function; int /*<<< orphan*/  adapter_index; } ;
struct hpi_adapter_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ERROR_BAD_ADAPTER_NUMBER ; 
 scalar_t__ HPI_OBJ_SUBSYSTEM ; 
 int /*<<< orphan*/  FUNC0 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 struct hpi_adapter_obj* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_response*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct hpi_message *phm, struct hpi_response *phr)
{
	struct hpi_adapter_obj *pao = NULL;

	if (phm->object != HPI_OBJ_SUBSYSTEM) {
		/* normal messages must have valid adapter index */
		pao = FUNC1(phm->adapter_index);
	} else {
		/* subsys messages don't address an adapter */
		FUNC0(NULL, phm, phr);
		return;
	}

	if (pao)
		FUNC0(pao, phm, phr);
	else
		FUNC2(phr, phm->object, phm->function,
			HPI_ERROR_BAD_ADAPTER_NUMBER);
}