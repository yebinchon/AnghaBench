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
typedef  int u64 ;
struct sst_generic_ipc {int /*<<< orphan*/  kwork; } ;
struct sst_dsp {int /*<<< orphan*/  spinlock; } ;
struct sst_byt {struct sst_generic_ipc ipc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_HEADER_DATA_MASK ; 
 int IPC_NOTIFICATION ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SST_BYT_IMRX_REQUEST ; 
 int SST_BYT_IPCD_BUSY ; 
 int SST_BYT_IPCD_DONE ; 
 int /*<<< orphan*/  SST_IMRX ; 
 int /*<<< orphan*/  SST_IPCD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_byt*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_byt*,int) ; 
 struct sst_byt* FUNC6 (struct sst_dsp*) ; 
 int FUNC7 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sst_dsp*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *context)
{
	struct sst_dsp *sst = (struct sst_dsp *) context;
	struct sst_byt *byt = FUNC6(sst);
	struct sst_generic_ipc *ipc = &byt->ipc;
	u64 header;
	unsigned long flags;

	FUNC2(&sst->spinlock, flags);

	header = FUNC7(sst, SST_IPCD);
	if (header & SST_BYT_IPCD_BUSY) {
		if (header & IPC_NOTIFICATION) {
			/* message from ADSP */
			FUNC4(byt, &flags);
		} else {
			/* reply from ADSP */
			FUNC5(byt, header);
		}
		/*
		 * clear IPCD BUSY bit and set DONE bit. Tell DSP we have
		 * processed the message and can accept new. Clear data part
		 * of the header
		 */
		FUNC8(sst, SST_IPCD,
			SST_BYT_IPCD_DONE | SST_BYT_IPCD_BUSY |
			FUNC0(IPC_HEADER_DATA_MASK),
			SST_BYT_IPCD_DONE);
		/* unmask message request interrupts */
		FUNC8(sst, SST_IMRX,
			SST_BYT_IMRX_REQUEST, 0);
	}

	FUNC3(&sst->spinlock, flags);

	/* continue to send any remaining messages... */
	FUNC1(&ipc->kwork);

	return IRQ_HANDLED;
}