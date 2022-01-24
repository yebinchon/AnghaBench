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
struct sst_hsw {int /*<<< orphan*/  dev; int /*<<< orphan*/  boot_complete; struct sst_dsp* dsp; } ;
struct sst_dsp {int dummy; } ;

/* Variables and functions */
 int IPC_FW_READY ; 
#define  IPC_GLB_ALLOCATE_STREAM 142 
#define  IPC_GLB_DEBUG_LOG_MESSAGE 141 
#define  IPC_GLB_ENTER_DX_STATE 140 
#define  IPC_GLB_FREE_STREAM 139 
#define  IPC_GLB_GET_DEVICE_FORMATS 138 
#define  IPC_GLB_GET_FW_CAPABILITIES 137 
#define  IPC_GLB_GET_FW_VERSION 136 
#define  IPC_GLB_GET_MIXER_STREAM_INFO 135 
#define  IPC_GLB_MAX_IPC_MESSAGE_TYPE 134 
#define  IPC_GLB_MODULE_OPERATION 133 
#define  IPC_GLB_REQUEST_DUMP 132 
#define  IPC_GLB_RESTORE_CONTEXT 131 
#define  IPC_GLB_SET_DEVICE_FORMATS 130 
#define  IPC_GLB_SHORT_REPLY 129 
#define  IPC_GLB_STREAM_MESSAGE 128 
 int /*<<< orphan*/  SST_IPCD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_hsw*,int) ; 
 int FUNC2 (struct sst_hsw*,int) ; 
 int FUNC3 (struct sst_hsw*,int) ; 
 int FUNC4 (struct sst_hsw*,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct sst_hsw *hsw)
{
	struct sst_dsp *sst = hsw->dsp;
	u32 type, header;
	int handled = 1;

	header = FUNC6(sst, SST_IPCD);
	type = FUNC5(header);

	FUNC7("processing -->", header);

	/* FW Ready is a special case */
	if (!hsw->boot_complete && header & IPC_FW_READY) {
		FUNC1(hsw, header);
		return handled;
	}

	switch (type) {
	case IPC_GLB_GET_FW_VERSION:
	case IPC_GLB_ALLOCATE_STREAM:
	case IPC_GLB_FREE_STREAM:
	case IPC_GLB_GET_FW_CAPABILITIES:
	case IPC_GLB_REQUEST_DUMP:
	case IPC_GLB_GET_DEVICE_FORMATS:
	case IPC_GLB_SET_DEVICE_FORMATS:
	case IPC_GLB_ENTER_DX_STATE:
	case IPC_GLB_GET_MIXER_STREAM_INFO:
	case IPC_GLB_MAX_IPC_MESSAGE_TYPE:
	case IPC_GLB_RESTORE_CONTEXT:
	case IPC_GLB_SHORT_REPLY:
		FUNC0(hsw->dev, "error: message type %d header 0x%x\n",
			type, header);
		break;
	case IPC_GLB_STREAM_MESSAGE:
		handled = FUNC4(hsw, header);
		break;
	case IPC_GLB_DEBUG_LOG_MESSAGE:
		handled = FUNC2(hsw, header);
		break;
	case IPC_GLB_MODULE_OPERATION:
		handled = FUNC3(hsw, header);
		break;
	default:
		FUNC0(hsw->dev, "error: unexpected type %d hdr 0x%8.8x\n",
			type, header);
		break;
	}

	return handled;
}