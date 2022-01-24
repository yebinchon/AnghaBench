#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  utility_name ;
typedef  char u8 ;
typedef  char u32 ;
typedef  char u16 ;
struct cfpkt {int dummy; } ;
struct cflayer {int (* transmit ) (struct cflayer*,struct cfpkt*) ;struct cflayer* dn; } ;
struct TYPE_13__ {char paramlen; char* params; int /*<<< orphan*/  name; int /*<<< orphan*/  fifosize_bufs; int /*<<< orphan*/  fifosize_kb; } ;
struct TYPE_12__ {char* volume; int /*<<< orphan*/  connid; } ;
struct TYPE_11__ {int /*<<< orphan*/  connid; } ;
struct TYPE_10__ {int /*<<< orphan*/  connid; } ;
struct TYPE_14__ {TYPE_4__ utility; TYPE_3__ rfm; TYPE_2__ datagram; TYPE_1__ video; } ;
struct cfctrl_link_param {int chtype; int linktype; int priority; int phyid; int endpoint; TYPE_5__ u; } ;
struct cfctrl_request_info {char cmd; struct cfctrl_link_param param; struct cflayer* client_layer; } ;
struct TYPE_16__ {struct cflayer layer; } ;
struct cfctrl {TYPE_7__ serv; } ;
struct TYPE_17__ {TYPE_6__* dev_info; } ;
struct TYPE_15__ {int id; } ;

/* Variables and functions */
 char CFCTRL_CMD_LINK_SETUP ; 
#define  CFCTRL_SRV_DATAGRAM 133 
#define  CFCTRL_SRV_DBG 132 
#define  CFCTRL_SRV_RFM 131 
#define  CFCTRL_SRV_UTIL 130 
#define  CFCTRL_SRV_VEI 129 
#define  CFCTRL_SRV_VIDEO 128 
 int /*<<< orphan*/  CFPKT_CTRL_PKT_LEN ; 
 int EALREADY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 int UTILITY_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cflayer*,struct cflayer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfctrl*,struct cfctrl_request_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfpkt*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cfpkt*,char) ; 
 struct cfpkt* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC6 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfpkt*,int /*<<< orphan*/ ) ; 
 struct cfctrl* FUNC8 (struct cflayer*) ; 
 char FUNC9 (int /*<<< orphan*/ ) ; 
 char FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,struct cfctrl*) ; 
 struct cfctrl_request_info* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (struct cflayer*,struct cfpkt*) ; 

int FUNC20(struct cflayer *layer,
			  struct cfctrl_link_param *param,
			  struct cflayer *user_layer)
{
	struct cfctrl *cfctrl = FUNC8(layer);
	u32 tmp32;
	u16 tmp16;
	u8 tmp8;
	struct cfctrl_request_info *req;
	int ret;
	char utility_name[16];
	struct cfpkt *pkt;
	struct cflayer *dn = cfctrl->serv.layer.dn;

	if (!dn) {
		FUNC14("not able to send linkup request\n");
		return -ENODEV;
	}

	if (FUNC1(layer, user_layer) > 0) {
		/* Slight Paranoia, check if already connecting */
		FUNC15("Duplicate connect request for same client\n");
		FUNC0(1);
		return -EALREADY;
	}

	pkt = FUNC5(CFPKT_CTRL_PKT_LEN);
	if (!pkt)
		return -ENOMEM;
	FUNC4(pkt, CFCTRL_CMD_LINK_SETUP);
	FUNC4(pkt, (param->chtype << 4) | param->linktype);
	FUNC4(pkt, (param->priority << 3) | param->phyid);
	FUNC4(pkt, param->endpoint & 0x03);

	switch (param->linktype) {
	case CFCTRL_SRV_VEI:
		break;
	case CFCTRL_SRV_VIDEO:
		FUNC4(pkt, (u8) param->u.video.connid);
		break;
	case CFCTRL_SRV_DBG:
		break;
	case CFCTRL_SRV_DATAGRAM:
		tmp32 = FUNC10(param->u.datagram.connid);
		FUNC3(pkt, &tmp32, 4);
		break;
	case CFCTRL_SRV_RFM:
		/* Construct a frame, convert DatagramConnectionID to network
		 * format long and copy it out...
		 */
		tmp32 = FUNC10(param->u.rfm.connid);
		FUNC3(pkt, &tmp32, 4);
		/* Add volume name, including zero termination... */
		FUNC3(pkt, param->u.rfm.volume,
			       FUNC18(param->u.rfm.volume) + 1);
		break;
	case CFCTRL_SRV_UTIL:
		tmp16 = FUNC9(param->u.utility.fifosize_kb);
		FUNC3(pkt, &tmp16, 2);
		tmp16 = FUNC9(param->u.utility.fifosize_bufs);
		FUNC3(pkt, &tmp16, 2);
		FUNC13(utility_name, 0, sizeof(utility_name));
		FUNC17(utility_name, param->u.utility.name,
			UTILITY_NAME_LENGTH);
		FUNC3(pkt, utility_name, UTILITY_NAME_LENGTH);
		tmp8 = param->u.utility.paramlen;
		FUNC3(pkt, &tmp8, 1);
		FUNC3(pkt, param->u.utility.params,
			       param->u.utility.paramlen);
		break;
	default:
		FUNC16("Request setup of bad link type = %d\n",
			param->linktype);
		return -EINVAL;
	}
	req = FUNC12(sizeof(*req), GFP_KERNEL);
	if (!req)
		return -ENOMEM;
	req->client_layer = user_layer;
	req->cmd = CFCTRL_CMD_LINK_SETUP;
	req->param = *param;
	FUNC2(cfctrl, req);
	FUNC11(FUNC6(pkt), cfctrl);
	/*
	 * NOTE:Always send linkup and linkdown request on the same
	 *	device as the payload. Otherwise old queued up payload
	 *	might arrive with the newly allocated channel ID.
	 */
	FUNC6(pkt)->dev_info->id = param->phyid;
	FUNC7(pkt, TC_PRIO_CONTROL);
	ret =
	    dn->transmit(dn, pkt);
	if (ret < 0) {
		int count;

		count = FUNC1(&cfctrl->serv.layer,
						user_layer);
		if (count != 1) {
			FUNC15("Could not remove request (%d)", count);
			return -ENODEV;
		}
	}
	return 0;
}