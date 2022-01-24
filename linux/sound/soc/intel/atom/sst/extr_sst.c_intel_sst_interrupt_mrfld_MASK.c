#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int busy_interrupt; } ;
union sst_imr_reg_mrfld {void* full; TYPE_2__ part; } ;
struct TYPE_11__ {int /*<<< orphan*/  msg_id; scalar_t__ large; scalar_t__ done; } ;
struct TYPE_12__ {TYPE_4__ part; } ;
struct TYPE_13__ {unsigned int header_low_payload; TYPE_5__ header_high; } ;
union ipc_header_mrfld {TYPE_6__ p; void* full; } ;
struct TYPE_8__ {int done_interrupt; scalar_t__ busy_interrupt; } ;
union interrupt_reg_mrfld {TYPE_1__ part; void* full; } ;
struct ipc_post {int /*<<< orphan*/  node; int /*<<< orphan*/  is_process_reply; union ipc_header_mrfld mrfld_header; int /*<<< orphan*/  mailbox_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  ipcd; int /*<<< orphan*/  ipcx; } ;
struct intel_sst_drv {TYPE_7__* ops; int /*<<< orphan*/  rx_msg_lock; int /*<<< orphan*/  rx_list; int /*<<< orphan*/  dev; scalar_t__ mailbox_recv_offset; scalar_t__ mailbox; TYPE_3__ ipc_reg; int /*<<< orphan*/  shim; int /*<<< orphan*/  ipc_spin_lock; int /*<<< orphan*/  ipc_post_msg_wq; int /*<<< orphan*/  post_msg_wq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* clear_interrupt ) (struct intel_sst_drv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  SST_IMRX ; 
 int /*<<< orphan*/  SST_ISRX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ipc_post**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_sst_drv*) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *context)
{
	union interrupt_reg_mrfld isr;
	union ipc_header_mrfld header;
	union sst_imr_reg_mrfld imr;
	struct ipc_post *msg = NULL;
	unsigned int size = 0;
	struct intel_sst_drv *drv = (struct intel_sst_drv *) context;
	irqreturn_t retval = IRQ_HANDLED;

	/* Interrupt arrived, check src */
	isr.full = FUNC8(drv->shim, SST_ISRX);

	if (isr.part.done_interrupt) {
		/* Clear done bit */
		FUNC4(&drv->ipc_spin_lock);
		header.full = FUNC8(drv->shim,
					drv->ipc_reg.ipcx);
		header.p.header_high.part.done = 0;
		FUNC9(drv->shim, drv->ipc_reg.ipcx, header.full);

		/* write 1 to clear status register */;
		isr.part.done_interrupt = 1;
		FUNC9(drv->shim, SST_ISRX, isr.full);
		FUNC5(&drv->ipc_spin_lock);

		/* we can send more messages to DSP so trigger work */
		FUNC3(drv->post_msg_wq, &drv->ipc_post_msg_wq);
		retval = IRQ_HANDLED;
	}

	if (isr.part.busy_interrupt) {
		/* message from dsp so copy that */
		FUNC4(&drv->ipc_spin_lock);
		imr.full = FUNC8(drv->shim, SST_IMRX);
		imr.part.busy_interrupt = 1;
		FUNC9(drv->shim, SST_IMRX, imr.full);
		FUNC5(&drv->ipc_spin_lock);
		header.full =  FUNC8(drv->shim, drv->ipc_reg.ipcd);

		if (FUNC6(&msg, header.p.header_high.part.large)) {
			drv->ops->clear_interrupt(drv);
			return IRQ_HANDLED;
		}

		if (header.p.header_high.part.large) {
			size = header.p.header_low_payload;
			if (FUNC10(size)) {
				FUNC2(msg->mailbox_data,
					drv->mailbox + drv->mailbox_recv_offset, size);
			} else {
				FUNC0(drv->dev,
					"Mailbox not copied, payload size is: %u\n", size);
				header.p.header_low_payload = 0;
			}
		}

		msg->mrfld_header = header;
		msg->is_process_reply =
			FUNC7(header.p.header_high.part.msg_id);
		FUNC4(&drv->rx_msg_lock);
		FUNC1(&msg->node, &drv->rx_list);
		FUNC5(&drv->rx_msg_lock);
		drv->ops->clear_interrupt(drv);
		retval = IRQ_WAKE_THREAD;
	}
	return retval;
}