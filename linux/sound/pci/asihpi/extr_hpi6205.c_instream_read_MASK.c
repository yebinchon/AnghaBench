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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct hpi_response {int /*<<< orphan*/  error; } ;
struct TYPE_5__ {scalar_t__ data_size; scalar_t__ pb_data; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_message {size_t obj_index; TYPE_4__ u; int /*<<< orphan*/  function; int /*<<< orphan*/  object; } ;
struct hpi_hw_obj {int /*<<< orphan*/ * instream_host_buffers; int /*<<< orphan*/ * instream_host_buffer_size; struct bus_master_interface* p_interface_buffer; } ;
struct hpi_hostbuffer_status {int size_in_bytes; int host_index; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct bus_master_interface {struct hpi_hostbuffer_status* instream_host_buffer_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ERROR_INVALID_DATASIZE ; 
 int /*<<< orphan*/  HPI_ERROR_INVALID_OPERATION ; 
 int /*<<< orphan*/  FUNC0 (struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 scalar_t__ FUNC4 (struct hpi_hostbuffer_status*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC7(struct hpi_adapter_obj *pao,
	struct hpi_message *phm, struct hpi_response *phr)
{
	struct hpi_hw_obj *phw = pao->priv;
	struct bus_master_interface *interface = phw->p_interface_buffer;
	struct hpi_hostbuffer_status *status;
	u32 data_available;
	u8 *p_bbm_data;
	u32 l_first_read;
	u8 *p_app_data = (u8 *)phm->u.d.u.data.pb_data;

	if (!phw->instream_host_buffer_size[phm->obj_index]) {
		FUNC3(pao, phm, phr);
		return;
	}
	FUNC0(phr, phm->object, phm->function, 0);

	status = &interface->instream_host_buffer_status[phm->obj_index];
	data_available = FUNC4(status);
	if (data_available < phm->u.d.u.data.data_size) {
		phr->error = HPI_ERROR_INVALID_DATASIZE;
		return;
	}

	if (FUNC2(&phw->instream_host_buffers[phm->
				obj_index])) {
		if (FUNC1(&phw->
				instream_host_buffers[phm->obj_index],
				(void *)&p_bbm_data)) {
			phr->error = HPI_ERROR_INVALID_OPERATION;
			return;
		}

		/* either all data,
		   or enough to fit from current to end of BBM buffer */
		l_first_read =
			FUNC6(phm->u.d.u.data.data_size,
			status->size_in_bytes -
			(status->host_index & (status->size_in_bytes - 1)));

		FUNC5(p_app_data,
			p_bbm_data +
			(status->host_index & (status->size_in_bytes - 1)),
			l_first_read);
		/* remaining data if any */
		FUNC5(p_app_data + l_first_read, p_bbm_data,
			phm->u.d.u.data.data_size - l_first_read);
	}
	status->host_index += phm->u.d.u.data.data_size;
}