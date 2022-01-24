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
typedef  int /*<<< orphan*/  u16 ;
struct hpi_response {scalar_t__ type; scalar_t__ object; scalar_t__ function; } ;
struct hpi_message {scalar_t__ object; scalar_t__ function; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  HPI_ERROR_INVALID_RESPONSE ; 
 scalar_t__ HPI_TYPE_RESPONSE ; 

u16 FUNC1(struct hpi_message *phm, struct hpi_response *phr)
{
	if (phr->type != HPI_TYPE_RESPONSE) {
		FUNC0(ERROR, "header type %d invalid\n", phr->type);
		return HPI_ERROR_INVALID_RESPONSE;
	}

	if (phr->object != phm->object) {
		FUNC0(ERROR, "header object %d invalid\n",
			phr->object);
		return HPI_ERROR_INVALID_RESPONSE;
	}

	if (phr->function != phm->function) {
		FUNC0(ERROR, "header function %d invalid\n",
			phr->function);
		return HPI_ERROR_INVALID_RESPONSE;
	}

	return 0;
}