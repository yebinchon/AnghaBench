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
typedef  size_t uint32_t ;
struct q6asm {int /*<<< orphan*/  mem_wait; } ;
struct audio_port_data {int mem_map_handle; } ;
struct aprv2_ibasic_rsp_result_t {int opcode; int /*<<< orphan*/  status; } ;
struct audio_client {int /*<<< orphan*/  refcount; int /*<<< orphan*/  priv; int /*<<< orphan*/  (* cb ) (int,int,struct aprv2_ibasic_rsp_result_t*,int /*<<< orphan*/ ) ;struct aprv2_ibasic_rsp_result_t result; struct audio_port_data* port; TYPE_1__* dev; } ;
struct apr_hdr {int dest_port; int token; int opcode; } ;
struct apr_resp_pkt {struct aprv2_ibasic_rsp_result_t* payload; struct apr_hdr hdr; } ;
struct apr_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
#define  APR_BASIC_RSP_RESULT 131 
#define  ASM_CMDRSP_SHARED_MEM_MAP_REGIONS 130 
#define  ASM_CMD_SHARED_MEM_MAP_REGIONS 129 
#define  ASM_CMD_SHARED_MEM_UNMAP_REGIONS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct q6asm* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q6asm_audio_client_release ; 
 struct audio_client* FUNC4 (struct q6asm*,size_t) ; 
 int FUNC5 (struct apr_device*,struct apr_resp_pkt*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,struct aprv2_ibasic_rsp_result_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct apr_device *adev,
			       struct apr_resp_pkt *data)
{
	struct q6asm *q6asm = FUNC2(&adev->dev);
	struct aprv2_ibasic_rsp_result_t *result;
	struct audio_port_data *port;
	struct audio_client *ac = NULL;
	struct apr_hdr *hdr = &data->hdr;
	struct q6asm *a;
	uint32_t sid = 0;
	uint32_t dir = 0;
	int session_id;

	session_id = (hdr->dest_port >> 8) & 0xFF;
	if (session_id)
		return FUNC5(adev, data, session_id);

	sid = (hdr->token >> 8) & 0x0F;
	ac = FUNC4(q6asm, sid);
	if (!ac) {
		FUNC1(&adev->dev, "Audio Client not active\n");
		return 0;
	}

	a = FUNC2(ac->dev->parent);
	dir = (hdr->token & 0x0F);
	port = &ac->port[dir];
	result = data->payload;

	switch (hdr->opcode) {
	case APR_BASIC_RSP_RESULT:
		switch (result->opcode) {
		case ASM_CMD_SHARED_MEM_MAP_REGIONS:
		case ASM_CMD_SHARED_MEM_UNMAP_REGIONS:
			ac->result = *result;
			FUNC7(&a->mem_wait);
			break;
		default:
			FUNC1(&adev->dev, "command[0x%x] not expecting rsp\n",
				 result->opcode);
			break;
		}
		goto done;
	case ASM_CMDRSP_SHARED_MEM_MAP_REGIONS:
		ac->result.status = 0;
		ac->result.opcode = hdr->opcode;
		port->mem_map_handle = result->opcode;
		FUNC7(&a->mem_wait);
		break;
	case ASM_CMD_SHARED_MEM_UNMAP_REGIONS:
		ac->result.opcode = hdr->opcode;
		ac->result.status = 0;
		port->mem_map_handle = 0;
		FUNC7(&a->mem_wait);
		break;
	default:
		FUNC0(&adev->dev, "command[0x%x]success [0x%x]\n",
			result->opcode, result->status);
		break;
	}

	if (ac->cb)
		ac->cb(hdr->opcode, hdr->token, data->payload, ac->priv);

done:
	FUNC3(&ac->refcount, q6asm_audio_client_release);

	return 0;
}