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
struct hpi_message {int function; } ;
struct hpi_adapter_obj {int dummy; } ;

/* Variables and functions */
#define  HPI_ADAPTER_DELETE 128 
 int /*<<< orphan*/  FUNC0 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 

__attribute__((used)) static void FUNC2(struct hpi_adapter_obj *pao,
	struct hpi_message *phm, struct hpi_response *phr)
{
	switch (phm->function) {
	case HPI_ADAPTER_DELETE:
		FUNC0(pao, phm, phr);
		break;
	default:
		FUNC1(pao, phm, phr);
		break;
	}
}