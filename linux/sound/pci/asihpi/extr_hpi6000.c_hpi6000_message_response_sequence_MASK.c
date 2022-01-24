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
typedef  size_t u16 ;
struct hpi_response {scalar_t__ size; } ;
struct hpi_message {scalar_t__ size; } ;
struct hpi_hw_obj {scalar_t__ message_buffer_address_on_dsp; scalar_t__ response_buffer_address_on_dsp; struct dsp_obj* ado; } ;
struct hpi_adapter_obj {scalar_t__ dsp_crashed; struct hpi_hw_obj* priv; } ;
struct dsp_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  H6READ ; 
 short HPI6000_ERROR_MSG_GET_ADR ; 
 short HPI6000_ERROR_MSG_RESP_BLOCKREAD32 ; 
 short HPI6000_ERROR_MSG_RESP_BLOCKWRITE32 ; 
 short HPI6000_ERROR_MSG_RESP_GETRESPCMD ; 
 short HPI6000_ERROR_MSG_RESP_GET_RESP_ACK ; 
 short HPI6000_ERROR_MSG_RESP_IDLECMD ; 
 short HPI6000_ERROR_MSG_RESP_IDLE_TIMEOUT ; 
 short HPI6000_ERROR_RESP_GET_ADR ; 
 short HPI6000_ERROR_RESP_GET_LEN ; 
 short HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 size_t HPI_HIF_ERROR_MASK ; 
 int /*<<< orphan*/  HPI_HIF_GET_RESP ; 
 int /*<<< orphan*/  HPI_HIF_IDLE ; 
 scalar_t__ TIMEOUT ; 
 scalar_t__ FUNC1 (struct hpi_adapter_obj*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hpi_adapter_obj*,size_t,scalar_t__,scalar_t__*,size_t) ; 
 scalar_t__ FUNC3 (struct hpi_adapter_obj*,size_t,scalar_t__,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct dsp_obj*) ; 
 scalar_t__ FUNC5 (struct hpi_adapter_obj*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct hpi_adapter_obj*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct dsp_obj*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct hpi_message*,struct hpi_response*) ; 
 scalar_t__ message_buffer_address ; 
 scalar_t__ response_buffer_address ; 

__attribute__((used)) static short FUNC9(struct hpi_adapter_obj *pao,
	u16 dsp_index, struct hpi_message *phm, struct hpi_response *phr)
{
	struct hpi_hw_obj *phw = pao->priv;
	struct dsp_obj *pdo = &phw->ado[dsp_index];
	u32 timeout;
	u16 ack;
	u32 address;
	u32 length;
	u32 *p_data;
	u16 error = 0;

	ack = FUNC6(pao, dsp_index, HPI_HIF_IDLE);
	if (ack & HPI_HIF_ERROR_MASK) {
		pao->dsp_crashed++;
		return HPI6000_ERROR_MSG_RESP_IDLE_TIMEOUT;
	}
	pao->dsp_crashed = 0;

	/* get the message address and size */
	if (phw->message_buffer_address_on_dsp == 0) {
		timeout = TIMEOUT;
		do {
			address =
				FUNC7(pdo,
				FUNC0(message_buffer_address));
			phw->message_buffer_address_on_dsp = address;
		} while (FUNC1(pao, H6READ)
			&& --timeout);
		if (!timeout)
			return HPI6000_ERROR_MSG_GET_ADR;
	} else
		address = phw->message_buffer_address_on_dsp;

	length = phm->size;

	/* send the message */
	p_data = (u32 *)phm;
	if (FUNC3(pao, dsp_index, address, p_data,
			(u16)length / 4))
		return HPI6000_ERROR_MSG_RESP_BLOCKWRITE32;

	if (FUNC5(pao, dsp_index, HPI_HIF_GET_RESP))
		return HPI6000_ERROR_MSG_RESP_GETRESPCMD;
	FUNC4(pdo);

	ack = FUNC6(pao, dsp_index, HPI_HIF_GET_RESP);
	if (ack & HPI_HIF_ERROR_MASK)
		return HPI6000_ERROR_MSG_RESP_GET_RESP_ACK;

	/* get the response address */
	if (phw->response_buffer_address_on_dsp == 0) {
		timeout = TIMEOUT;
		do {
			address =
				FUNC7(pdo,
				FUNC0(response_buffer_address));
		} while (FUNC1(pao, H6READ)
			&& --timeout);
		phw->response_buffer_address_on_dsp = address;

		if (!timeout)
			return HPI6000_ERROR_RESP_GET_ADR;
	} else
		address = phw->response_buffer_address_on_dsp;

	/* read the length of the response back from the DSP */
	timeout = TIMEOUT;
	do {
		length = FUNC7(pdo, FUNC0(length));
	} while (FUNC1(pao, H6READ) && --timeout);
	if (!timeout)
		return HPI6000_ERROR_RESP_GET_LEN;

	if (length > phr->size)
		return HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL;

	/* get the response */
	p_data = (u32 *)phr;
	if (FUNC2(pao, dsp_index, address, p_data,
			(u16)length / 4))
		return HPI6000_ERROR_MSG_RESP_BLOCKREAD32;

	/* set i/f back to idle */
	if (FUNC5(pao, dsp_index, HPI_HIF_IDLE))
		return HPI6000_ERROR_MSG_RESP_IDLECMD;
	FUNC4(pdo);

	error = FUNC8(phm, phr);
	return error;
}