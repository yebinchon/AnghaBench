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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct hpi_response {int /*<<< orphan*/  error; TYPE_2__ u; } ;
struct hpi_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_OBJ_SUBSYSTEM ; 
 int /*<<< orphan*/  HPI_SUBSYS_GET_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct hpi_message*,struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*) ; 

u16 FUNC2(u32 *pversion_ex)
{
	struct hpi_message hm;
	struct hpi_response hr;

	FUNC0(&hm, &hr, HPI_OBJ_SUBSYSTEM,
		HPI_SUBSYS_GET_VERSION);
	FUNC1(&hm, &hr);
	*pversion_ex = hr.u.s.data;
	return hr.error;
}