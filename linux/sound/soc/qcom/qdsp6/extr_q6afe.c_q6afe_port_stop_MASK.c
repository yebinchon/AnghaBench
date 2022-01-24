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
struct q6afe_port {int id; int token; struct q6afe* afe; } ;
struct q6afe {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int pkt_size; int token; int /*<<< orphan*/  opcode; scalar_t__ dest_port; scalar_t__ src_port; int /*<<< orphan*/  hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;
struct afe_port_cmd_device_stop {int port_id; scalar_t__ reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_PORT_CMD_DEVICE_STOP ; 
 int AFE_PORT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int APR_HDR_SIZE ; 
 int /*<<< orphan*/  APR_MSG_TYPE_SEQ_CMD ; 
 int /*<<< orphan*/  APR_PKT_VER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct q6afe*,struct apr_pkt*,struct q6afe_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct apr_pkt*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct q6afe_port *port)
{
	struct afe_port_cmd_device_stop *stop;
	struct q6afe *afe = port->afe;
	struct apr_pkt *pkt;
	int port_id = port->id;
	int ret = 0;
	int index, pkt_size;
	void *p;

	port_id = port->id;
	index = port->token;
	if (index < 0 || index >= AFE_PORT_MAX) {
		FUNC3(afe->dev, "AFE port index[%d] invalid!\n", index);
		return -EINVAL;
	}

	pkt_size = APR_HDR_SIZE + sizeof(*stop);
	p = FUNC5(pkt_size, GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	pkt = p;
	stop = p + APR_HDR_SIZE;

	pkt->hdr.hdr_field = FUNC0(APR_MSG_TYPE_SEQ_CMD,
					   FUNC1(APR_HDR_SIZE),
					   APR_PKT_VER);
	pkt->hdr.pkt_size = pkt_size;
	pkt->hdr.src_port = 0;
	pkt->hdr.dest_port = 0;
	pkt->hdr.token = index;
	pkt->hdr.opcode = AFE_PORT_CMD_DEVICE_STOP;
	stop->port_id = port_id;
	stop->reserved = 0;

	ret = FUNC2(afe, pkt, port);
	if (ret)
		FUNC3(afe->dev, "AFE close failed %d\n", ret);

	FUNC4(pkt);
	return ret;
}