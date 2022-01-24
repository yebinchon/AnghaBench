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
typedef  scalar_t__ u32 ;
typedef  void* u16 ;
struct hpi_response {scalar_t__ error; } ;
struct hpi_message {void* obj_index; void* adapter_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ISTREAM_OPEN ; 
 int /*<<< orphan*/  HPI_OBJ_ISTREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_message*,struct hpi_response*) ; 

u16 FUNC3(u16 adapter_index, u16 instream_index, u32 *ph_instream)
{
	struct hpi_message hm;
	struct hpi_response hr;

	FUNC1(&hm, &hr, HPI_OBJ_ISTREAM,
		HPI_ISTREAM_OPEN);
	hm.adapter_index = adapter_index;
	hm.obj_index = instream_index;

	FUNC2(&hm, &hr);

	if (hr.error == 0)
		*ph_instream =
			FUNC0(HPI_OBJ_ISTREAM, adapter_index,
			instream_index);
	else
		*ph_instream = 0;

	return hr.error;
}