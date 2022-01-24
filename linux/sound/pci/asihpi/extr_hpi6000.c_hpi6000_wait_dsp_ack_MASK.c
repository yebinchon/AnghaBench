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
typedef  int u32 ;
typedef  size_t u16 ;
struct hpi_hw_obj {struct dsp_obj* ado; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct dsp_obj {int /*<<< orphan*/  prHPI_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  H6READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 short HPI_HIF_ERROR_MASK ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  dsp_ack ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_adapter_obj*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dsp_obj*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static short FUNC4(struct hpi_adapter_obj *pao, u16 dsp_index,
	u32 ack_value)
{
	struct hpi_hw_obj *phw = pao->priv;
	struct dsp_obj *pdo = &phw->ado[dsp_index];
	u32 ack = 0L;
	u32 timeout;
	u32 hPIC = 0L;

	/* wait for host interrupt to signal ack is ready */
	timeout = TIMEOUT;
	while (--timeout) {
		hPIC = FUNC3(pdo->prHPI_control);
		if (hPIC & 0x04)	/* 0x04 = HINT from DSP */
			break;
	}
	if (timeout == 0)
		return HPI_HIF_ERROR_MASK;

	/* wait for dwAckValue */
	timeout = TIMEOUT;
	while (--timeout) {
		/* read the ack mailbox */
		ack = FUNC2(pdo, FUNC0(dsp_ack));
		if (ack == ack_value)
			break;
		if ((ack & HPI_HIF_ERROR_MASK)
			&& !FUNC1(pao, H6READ))
			break;
		/*for (i=0;i<1000;i++) */
		/*      dwPause=i+1; */
	}
	if (ack & HPI_HIF_ERROR_MASK)
		/* indicates bad read from DSP -
		   typically 0xffffff is read for some reason */
		ack = HPI_HIF_ERROR_MASK;

	if (timeout == 0)
		ack = HPI_HIF_ERROR_MASK;
	return (short)ack;
}