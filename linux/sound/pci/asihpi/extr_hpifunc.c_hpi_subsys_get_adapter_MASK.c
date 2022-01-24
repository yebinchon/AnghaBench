#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ adapter_type; scalar_t__ adapter_index; } ;
struct TYPE_3__ {TYPE_2__ s; } ;
struct hpi_response {scalar_t__ error; TYPE_1__ u; } ;
struct hpi_message {scalar_t__ obj_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_OBJ_SUBSYSTEM ; 
 int /*<<< orphan*/  HPI_SUBSYS_GET_ADAPTER ; 
 int /*<<< orphan*/  FUNC0 (struct hpi_message*,struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*) ; 

u16 FUNC2(int iterator, u32 *padapter_index,
	u16 *pw_adapter_type)
{
	struct hpi_message hm;
	struct hpi_response hr;
	FUNC0(&hm, &hr, HPI_OBJ_SUBSYSTEM,
		HPI_SUBSYS_GET_ADAPTER);
	hm.obj_index = (u16)iterator;
	FUNC1(&hm, &hr);
	*padapter_index = (int)hr.u.s.adapter_index;
	*pw_adapter_type = hr.u.s.adapter_type;

	return hr.error;
}