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
struct sof_ipc_dma_trace_posn {int dummy; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  posn ;

/* Variables and functions */
#define  SOF_IPC_TRACE_DMA_POSITION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sof_dev*,int /*<<< orphan*/ *,struct sof_ipc_dma_trace_posn*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*,struct sof_ipc_dma_trace_posn*) ; 

__attribute__((used)) static void FUNC3(struct snd_sof_dev *sdev, u32 msg_id)
{
	struct sof_ipc_dma_trace_posn posn;

	switch (msg_id) {
	case SOF_IPC_TRACE_DMA_POSITION:
		/* read back full message */
		FUNC1(sdev, NULL, &posn, sizeof(posn));
		FUNC2(sdev, &posn);
		break;
	default:
		FUNC0(sdev->dev, "error: unhandled trace message %x\n",
			msg_id);
		break;
	}
}