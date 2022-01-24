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
struct hpi_response {int dummy; } ;
struct hpi_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ERROR_PROCESSING_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (struct hpi_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct hpi_message *phm,
	struct hpi_response *phr, u16 object, u16 function)
{
	FUNC0(phm, object, function);
	/* default error return if the response is
	   not filled in by the callee */
	FUNC1(phr, object, function,
		HPI_ERROR_PROCESSING_MESSAGE);
}