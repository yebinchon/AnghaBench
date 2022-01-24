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
typedef  long u32 ;
typedef  size_t u16 ;
struct hpi_response {int dummy; } ;
struct TYPE_5__ {long data_size; scalar_t__ pb_data; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_message {TYPE_4__ u; } ;
struct hpi_hw_obj {struct dsp_obj* ado; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct dsp_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  H6READ ; 
 short HPI6000_ERROR_SEND_DATA_ACK ; 
 short HPI6000_ERROR_SEND_DATA_ADR ; 
 short HPI6000_ERROR_SEND_DATA_CMD ; 
 short HPI6000_ERROR_SEND_DATA_IDLECMD ; 
 short HPI6000_ERROR_SEND_DATA_IDLE_TIMEOUT ; 
 short HPI6000_ERROR_SEND_DATA_TIMEOUT ; 
 short HPI6000_ERROR_SEND_DATA_WRITE ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 size_t HPI_HIF_ERROR_MASK ; 
 int /*<<< orphan*/  HPI_HIF_IDLE ; 
 int /*<<< orphan*/  HPI_HIF_SEND_DATA ; 
 scalar_t__ FUNC1 (struct hpi_adapter_obj*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hpi_adapter_obj*,size_t,long,long*,long) ; 
 int /*<<< orphan*/  FUNC3 (long,long) ; 
 int /*<<< orphan*/  FUNC4 (struct dsp_obj*) ; 
 scalar_t__ FUNC5 (struct hpi_adapter_obj*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct hpi_adapter_obj*,size_t,int /*<<< orphan*/ ) ; 
 long FUNC7 (struct dsp_obj*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static short FUNC8(struct hpi_adapter_obj *pao, u16 dsp_index,
	struct hpi_message *phm, struct hpi_response *phr)
{
	struct hpi_hw_obj *phw = pao->priv;
	struct dsp_obj *pdo = &phw->ado[dsp_index];
	u32 data_sent = 0;
	u16 ack;
	u32 length, address;
	u32 *p_data = (u32 *)phm->u.d.u.data.pb_data;
	u16 time_out = 8;

	(void)phr;

	/* round dwDataSize down to nearest 4 bytes */
	while ((data_sent < (phm->u.d.u.data.data_size & ~3L))
		&& --time_out) {
		ack = FUNC6(pao, dsp_index, HPI_HIF_IDLE);
		if (ack & HPI_HIF_ERROR_MASK)
			return HPI6000_ERROR_SEND_DATA_IDLE_TIMEOUT;

		if (FUNC5(pao, dsp_index,
				HPI_HIF_SEND_DATA))
			return HPI6000_ERROR_SEND_DATA_CMD;

		FUNC4(pdo);

		ack = FUNC6(pao, dsp_index, HPI_HIF_SEND_DATA);

		if (ack & HPI_HIF_ERROR_MASK)
			return HPI6000_ERROR_SEND_DATA_ACK;

		do {
			/* get the address and size */
			address = FUNC7(pdo, FUNC0(address));
			/* DSP returns number of DWORDS */
			length = FUNC7(pdo, FUNC0(length));
		} while (FUNC1(pao, H6READ));

		if (!FUNC3(address, length))
			return HPI6000_ERROR_SEND_DATA_ADR;

		/* send the data. break data into 512 DWORD blocks (2K bytes)
		 * and send using block write. 2Kbytes is the max as this is the
		 * memory window given to the HPI data register by the PCI2040
		 */

		{
			u32 len = length;
			u32 blk_len = 512;
			while (len) {
				if (len < blk_len)
					blk_len = len;
				if (FUNC2(pao, dsp_index,
						address, p_data, blk_len))
					return HPI6000_ERROR_SEND_DATA_WRITE;
				address += blk_len * 4;
				p_data += blk_len;
				len -= blk_len;
			}
		}

		if (FUNC5(pao, dsp_index, HPI_HIF_IDLE))
			return HPI6000_ERROR_SEND_DATA_IDLECMD;

		FUNC4(pdo);

		data_sent += length * 4;
	}
	if (!time_out)
		return HPI6000_ERROR_SEND_DATA_TIMEOUT;
	return 0;
}