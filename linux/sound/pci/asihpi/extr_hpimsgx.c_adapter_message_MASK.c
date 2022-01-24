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
struct hpi_message {int function; int /*<<< orphan*/  adapter_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
#define  HPI_ADAPTER_CLOSE 130 
#define  HPI_ADAPTER_DELETE 129 
#define  HPI_ADAPTER_OPEN 128 
 int /*<<< orphan*/  HPI_OBJ_ADAPTER ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC3 (struct hpi_message*,struct hpi_response*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct hpi_message*,struct hpi_response*) ; 

__attribute__((used)) static void FUNC5(struct hpi_message *phm, struct hpi_response *phr,
	void *h_owner)
{
	switch (phm->function) {
	case HPI_ADAPTER_OPEN:
		FUNC2(phm, phr);
		break;
	case HPI_ADAPTER_CLOSE:
		FUNC1(phm, phr);
		break;
	case HPI_ADAPTER_DELETE:
		FUNC0(phm->adapter_index, h_owner);
		{
			struct hpi_message hm;
			struct hpi_response hr;
			FUNC3(&hm, &hr, HPI_OBJ_ADAPTER,
				HPI_ADAPTER_CLOSE);
			hm.adapter_index = phm->adapter_index;
			FUNC4(&hm, &hr);
		}
		FUNC4(phm, phr);
		break;

	default:
		FUNC4(phm, phr);
		break;
	}
}