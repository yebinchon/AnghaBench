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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hpi_response {int /*<<< orphan*/  error; } ;
struct hpi_message {int /*<<< orphan*/  obj_index; int /*<<< orphan*/  adapter_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  HPI_ISTREAM_CLOSE ; 
 int /*<<< orphan*/  HPI_ISTREAM_GROUP_RESET ; 
 int /*<<< orphan*/  HPI_ISTREAM_HOSTBUFFER_FREE ; 
 int /*<<< orphan*/  HPI_OBJ_ISTREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_message*,struct hpi_response*) ; 

u16 FUNC3(u32 h_instream)
{
	struct hpi_message hm;
	struct hpi_response hr;

	FUNC1(&hm, &hr, HPI_OBJ_ISTREAM,
		HPI_ISTREAM_HOSTBUFFER_FREE);
	if (FUNC0(h_instream, &hm.adapter_index, &hm.obj_index))
		return HPI_ERROR_INVALID_HANDLE;
	FUNC2(&hm, &hr);

	FUNC1(&hm, &hr, HPI_OBJ_ISTREAM,
		HPI_ISTREAM_GROUP_RESET);
	FUNC0(h_instream, &hm.adapter_index, &hm.obj_index);
	FUNC2(&hm, &hr);

	FUNC1(&hm, &hr, HPI_OBJ_ISTREAM,
		HPI_ISTREAM_CLOSE);
	FUNC0(h_instream, &hm.adapter_index, &hm.obj_index);
	FUNC2(&hm, &hr);

	return hr.error;
}