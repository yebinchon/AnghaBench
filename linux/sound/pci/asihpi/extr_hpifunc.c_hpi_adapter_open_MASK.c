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
struct hpi_response {int /*<<< orphan*/  error; } ;
struct hpi_message {int /*<<< orphan*/  adapter_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ADAPTER_OPEN ; 
 int /*<<< orphan*/  HPI_OBJ_ADAPTER ; 
 int /*<<< orphan*/  FUNC0 (struct hpi_message*,struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*) ; 

u16 FUNC2(u16 adapter_index)
{
	struct hpi_message hm;
	struct hpi_response hr;
	FUNC0(&hm, &hr, HPI_OBJ_ADAPTER,
		HPI_ADAPTER_OPEN);
	hm.adapter_index = adapter_index;

	FUNC1(&hm, &hr);

	return hr.error;

}