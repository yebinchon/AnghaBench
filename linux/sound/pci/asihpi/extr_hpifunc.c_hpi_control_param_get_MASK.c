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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {void* param2; void* param1; } ;
struct TYPE_8__ {TYPE_3__ c; } ;
struct hpi_response {int /*<<< orphan*/  error; TYPE_4__ u; } ;
struct TYPE_5__ {void* param2; void* param1; int /*<<< orphan*/  attribute; } ;
struct TYPE_6__ {TYPE_1__ c; } ;
struct hpi_message {TYPE_2__ u; int /*<<< orphan*/  obj_index; int /*<<< orphan*/  adapter_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_CONTROL_GET_STATE ; 
 int /*<<< orphan*/  HPI_ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  HPI_OBJ_CONTROL ; 
 scalar_t__ FUNC0 (void* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_message*,struct hpi_response*) ; 

__attribute__((used)) static
u16 FUNC3(const u32 h_control, const u16 attrib, u32 param1,
	u32 param2, u32 *pparam1, u32 *pparam2)
{
	struct hpi_message hm;
	struct hpi_response hr;

	FUNC1(&hm, &hr, HPI_OBJ_CONTROL,
		HPI_CONTROL_GET_STATE);
	if (FUNC0(h_control, &hm.adapter_index, &hm.obj_index))
		return HPI_ERROR_INVALID_HANDLE;
	hm.u.c.attribute = attrib;
	hm.u.c.param1 = param1;
	hm.u.c.param2 = param2;
	FUNC2(&hm, &hr);

	*pparam1 = hr.u.c.param1;
	if (pparam2)
		*pparam2 = hr.u.c.param2;

	return hr.error;
}