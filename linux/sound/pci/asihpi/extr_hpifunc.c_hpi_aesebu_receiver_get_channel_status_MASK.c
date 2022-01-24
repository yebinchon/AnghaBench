#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ param2; } ;
struct TYPE_7__ {TYPE_2__ c; } ;
struct hpi_response {scalar_t__ error; TYPE_3__ u; } ;
struct TYPE_8__ {scalar_t__ param1; int /*<<< orphan*/  attribute; } ;
struct TYPE_5__ {TYPE_4__ c; } ;
struct hpi_message {TYPE_1__ u; int /*<<< orphan*/  obj_index; int /*<<< orphan*/  adapter_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_AESEBURX_CHANNELSTATUS ; 
 int /*<<< orphan*/  HPI_CONTROL_GET_STATE ; 
 scalar_t__ HPI_ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  HPI_OBJ_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_message*,struct hpi_response*) ; 

u16 FUNC3(u32 h_control, u16 index,
	u16 *pw_data)
{
	struct hpi_message hm;
	struct hpi_response hr;
	FUNC1(&hm, &hr, HPI_OBJ_CONTROL,
		HPI_CONTROL_GET_STATE);
	if (FUNC0(h_control, &hm.adapter_index, &hm.obj_index))
		return HPI_ERROR_INVALID_HANDLE;
	hm.u.c.attribute = HPI_AESEBURX_CHANNELSTATUS;
	hm.u.c.param1 = index;

	FUNC2(&hm, &hr);

	if (pw_data)
		*pw_data = (u16)hr.u.c.param2;
	return hr.error;
}