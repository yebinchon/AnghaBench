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
struct q6afe_port {int id; int cfg_type; int /*<<< orphan*/  token; int /*<<< orphan*/ * scfg; int /*<<< orphan*/  port_cfg; struct q6afe* afe; } ;
struct q6afe {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int pkt_size; int /*<<< orphan*/  opcode; int /*<<< orphan*/  token; scalar_t__ dest_port; scalar_t__ src_port; int /*<<< orphan*/  hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;
struct afe_port_cmd_device_start {int port_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_MODULE_AUDIO_DEV_INTERFACE ; 
 int /*<<< orphan*/  AFE_MODULE_TDM ; 
 int AFE_PARAM_ID_PORT_SLOT_MAPPING_CONFIG ; 
 int /*<<< orphan*/  AFE_PORT_CMD_DEVICE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int APR_HDR_SIZE ; 
 int /*<<< orphan*/  APR_MSG_TYPE_SEQ_CMD ; 
 int /*<<< orphan*/  APR_PKT_VER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct q6afe*,struct apr_pkt*,struct q6afe_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct apr_pkt*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct q6afe_port*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct q6afe_port *port)
{
	struct afe_port_cmd_device_start *start;
	struct q6afe *afe = port->afe;
	int port_id = port->id;
	int ret, param_id = port->cfg_type;
	struct apr_pkt *pkt;
	int pkt_size;
	void *p;

	ret  = FUNC6(port, &port->port_cfg, param_id,
				       AFE_MODULE_AUDIO_DEV_INTERFACE,
				       sizeof(port->port_cfg));
	if (ret) {
		FUNC3(afe->dev, "AFE enable for port 0x%x failed %d\n",
			port_id, ret);
		return ret;
	}

	if (port->scfg) {
		ret  = FUNC6(port, port->scfg,
					AFE_PARAM_ID_PORT_SLOT_MAPPING_CONFIG,
					AFE_MODULE_TDM, sizeof(*port->scfg));
		if (ret) {
			FUNC3(afe->dev, "AFE enable for port 0x%x failed %d\n",
			port_id, ret);
			return ret;
		}
	}

	pkt_size = APR_HDR_SIZE + sizeof(*start);
	p = FUNC5(pkt_size, GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	pkt = p;
	start = p + APR_HDR_SIZE;

	pkt->hdr.hdr_field = FUNC0(APR_MSG_TYPE_SEQ_CMD,
					    FUNC1(APR_HDR_SIZE),
					    APR_PKT_VER);
	pkt->hdr.pkt_size = pkt_size;
	pkt->hdr.src_port = 0;
	pkt->hdr.dest_port = 0;
	pkt->hdr.token = port->token;
	pkt->hdr.opcode = AFE_PORT_CMD_DEVICE_START;

	start->port_id = port_id;

	ret = FUNC2(afe, pkt, port);
	if (ret)
		FUNC3(afe->dev, "AFE enable for port 0x%x failed %d\n",
			port_id, ret);

	FUNC4(pkt);
	return ret;
}