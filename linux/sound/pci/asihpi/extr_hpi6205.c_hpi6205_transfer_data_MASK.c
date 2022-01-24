#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void u8 ;
typedef  long u32 ;
typedef  short u16 ;
struct hpi_hw_obj {struct bus_master_interface* p_interface_buffer; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * b_data; } ;
struct bus_master_interface {long transfer_size_in_bytes; int dsp_ack; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  ERROR ; 
 int H620_HIF_GET_DATA ; 
 int H620_HIF_IDLE ; 
 int H620_HIF_SEND_DATA ; 
 long HPI6205_SIZEOF_DATA ; 
 long HPI6205_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 short HPI_ERROR_DSP_HARDWARE ; 
 short HPI_ERROR_INVALID_DATA_POINTER ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,long) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_hw_obj*,int) ; 
 long FUNC3 (struct hpi_hw_obj*,int,long) ; 

__attribute__((used)) static short FUNC4(struct hpi_adapter_obj *pao, u8 *p_data,
	u32 data_size, int operation)
{
	struct hpi_hw_obj *phw = pao->priv;
	u32 data_transferred = 0;
	u16 err = 0;
	u32 temp2;
	struct bus_master_interface *interface = phw->p_interface_buffer;

	if (!p_data)
		return HPI_ERROR_INVALID_DATA_POINTER;

	data_size &= ~3L;	/* round data_size down to nearest 4 bytes */

	/* make sure state is IDLE */
	if (!FUNC3(phw, H620_HIF_IDLE, HPI6205_TIMEOUT))
		return HPI_ERROR_DSP_HARDWARE;

	while (data_transferred < data_size) {
		u32 this_copy = data_size - data_transferred;

		if (this_copy > HPI6205_SIZEOF_DATA)
			this_copy = HPI6205_SIZEOF_DATA;

		if (operation == H620_HIF_SEND_DATA)
			FUNC1((void *)&interface->u.b_data[0],
				&p_data[data_transferred], this_copy);

		interface->transfer_size_in_bytes = this_copy;

		/* DSP must change this back to nOperation */
		interface->dsp_ack = H620_HIF_IDLE;
		FUNC2(phw, operation);

		temp2 = FUNC3(phw, operation, HPI6205_TIMEOUT);
		FUNC0(DEBUG, "spun %d times for data xfer of %d\n",
			HPI6205_TIMEOUT - temp2, this_copy);

		if (!temp2) {
			/* timed out */
			FUNC0(ERROR,
				"Timed out waiting for " "state %d got %d\n",
				operation, interface->dsp_ack);

			break;
		}
		if (operation == H620_HIF_GET_DATA)
			FUNC1(&p_data[data_transferred],
				(void *)&interface->u.b_data[0], this_copy);

		data_transferred += this_copy;
	}
	if (interface->dsp_ack != operation)
		FUNC0(DEBUG, "interface->dsp_ack=%d, expected %d\n",
			interface->dsp_ack, operation);
	/*                      err=HPI_ERROR_DSP_HARDWARE; */

	FUNC2(phw, H620_HIF_IDLE);

	return err;
}