#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct cfpkt {int dummy; } ;
struct cflayer {int dummy; } ;
struct TYPE_12__ {int paramlen; int* params; scalar_t__ name; void* fifosize_bufs; void* fifosize_kb; } ;
struct TYPE_11__ {scalar_t__ volume; void* connid; } ;
struct TYPE_10__ {void* connid; } ;
struct TYPE_9__ {int connid; } ;
struct TYPE_13__ {TYPE_4__ utility; TYPE_3__ rfm; TYPE_2__ datagram; TYPE_1__ video; } ;
struct cfctrl_link_param {int linktype; int chtype; int priority; int phyid; int endpoint; TYPE_5__ u; } ;
struct cfctrl_request_info {int cmd; int /*<<< orphan*/ * client_layer; struct cfctrl_link_param param; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* radioset_rsp ) () ;int /*<<< orphan*/  (* restart_rsp ) () ;int /*<<< orphan*/  (* wake_rsp ) () ;int /*<<< orphan*/  (* sleep_rsp ) () ;int /*<<< orphan*/  (* enum_rsp ) () ;int /*<<< orphan*/  (* linkerror_ind ) () ;int /*<<< orphan*/  (* linkdestroy_rsp ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* linksetup_rsp ) (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* reject_rsp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  up; } ;
struct TYPE_15__ {TYPE_6__ layer; } ;
struct cfctrl {TYPE_8__ res; TYPE_7__ serv; int /*<<< orphan*/  info_list_lock; } ;
typedef  int /*<<< orphan*/  linkparam ;
typedef  enum cfctrl_srv { ____Placeholder_cfctrl_srv } cfctrl_srv ;

/* Variables and functions */
#define  CFCTRL_CMD_ENUM 141 
#define  CFCTRL_CMD_LINK_DESTROY 140 
#define  CFCTRL_CMD_LINK_ERR 139 
#define  CFCTRL_CMD_LINK_RECONF 138 
#define  CFCTRL_CMD_LINK_SETUP 137 
 int CFCTRL_CMD_MASK ; 
#define  CFCTRL_CMD_RADIO_SET 136 
#define  CFCTRL_CMD_SLEEP 135 
#define  CFCTRL_CMD_WAKE 134 
 int CFCTRL_ERR_BIT ; 
 int CFCTRL_RSP_BIT ; 
#define  CFCTRL_SRV_DATAGRAM 133 
#define  CFCTRL_SRV_DBG 132 
 int CFCTRL_SRV_MASK ; 
#define  CFCTRL_SRV_RFM 131 
#define  CFCTRL_SRV_UTIL 130 
#define  CFCTRL_SRV_VEI 129 
#define  CFCTRL_SRV_VIDEO 128 
 int UTILITY_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cfctrl_request_info* FUNC1 (struct cfctrl*,struct cfctrl_request_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfpkt*,int**,int) ; 
 void* FUNC5 (struct cfpkt*) ; 
 void* FUNC6 (struct cfpkt*) ; 
 int FUNC7 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfpkt*) ; 
 struct cfctrl* FUNC9 (struct cflayer*) ; 
 scalar_t__ FUNC10 (struct cfctrl*,int,struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC11 (struct cfctrl_request_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct cfctrl_link_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 

__attribute__((used)) static int FUNC26(struct cflayer *layer, struct cfpkt *pkt)
{
	u8 cmdrsp;
	u8 cmd;
	int ret = -1;
	u8 len;
	u8 param[255];
	u8 linkid = 0;
	struct cfctrl *cfctrl = FUNC9(layer);
	struct cfctrl_request_info rsp, *req;


	cmdrsp = FUNC7(pkt);
	cmd = cmdrsp & CFCTRL_CMD_MASK;
	if (cmd != CFCTRL_CMD_LINK_ERR
	    && CFCTRL_RSP_BIT != (CFCTRL_RSP_BIT & cmdrsp)
		&& CFCTRL_ERR_BIT != (CFCTRL_ERR_BIT & cmdrsp)) {
		if (FUNC10(cfctrl, cmd, pkt) != 0)
			cmdrsp |= CFCTRL_ERR_BIT;
	}

	switch (cmd) {
	case CFCTRL_CMD_LINK_SETUP:
		{
			enum cfctrl_srv serv;
			enum cfctrl_srv servtype;
			u8 endpoint;
			u8 physlinkid;
			u8 prio;
			u8 tmp;
			u8 *cp;
			int i;
			struct cfctrl_link_param linkparam;
			FUNC12(&linkparam, 0, sizeof(linkparam));

			tmp = FUNC7(pkt);

			serv = tmp & CFCTRL_SRV_MASK;
			linkparam.linktype = serv;

			servtype = tmp >> 4;
			linkparam.chtype = servtype;

			tmp = FUNC7(pkt);
			physlinkid = tmp & 0x07;
			prio = tmp >> 3;

			linkparam.priority = prio;
			linkparam.phyid = physlinkid;
			endpoint = FUNC7(pkt);
			linkparam.endpoint = endpoint & 0x03;

			switch (serv) {
			case CFCTRL_SRV_VEI:
			case CFCTRL_SRV_DBG:
				if (CFCTRL_ERR_BIT & cmdrsp)
					break;
				/* Link ID */
				linkid = FUNC7(pkt);
				break;
			case CFCTRL_SRV_VIDEO:
				tmp = FUNC7(pkt);
				linkparam.u.video.connid = tmp;
				if (CFCTRL_ERR_BIT & cmdrsp)
					break;
				/* Link ID */
				linkid = FUNC7(pkt);
				break;

			case CFCTRL_SRV_DATAGRAM:
				linkparam.u.datagram.connid =
				    FUNC6(pkt);
				if (CFCTRL_ERR_BIT & cmdrsp)
					break;
				/* Link ID */
				linkid = FUNC7(pkt);
				break;
			case CFCTRL_SRV_RFM:
				/* Construct a frame, convert
				 * DatagramConnectionID
				 * to network format long and copy it out...
				 */
				linkparam.u.rfm.connid =
				    FUNC6(pkt);
				cp = (u8 *) linkparam.u.rfm.volume;
				for (tmp = FUNC7(pkt);
				     FUNC8(pkt) && tmp != '\0';
				     tmp = FUNC7(pkt))
					*cp++ = tmp;
				*cp = '\0';

				if (CFCTRL_ERR_BIT & cmdrsp)
					break;
				/* Link ID */
				linkid = FUNC7(pkt);

				break;
			case CFCTRL_SRV_UTIL:
				/* Construct a frame, convert
				 * DatagramConnectionID
				 * to network format long and copy it out...
				 */
				/* Fifosize KB */
				linkparam.u.utility.fifosize_kb =
				    FUNC5(pkt);
				/* Fifosize bufs */
				linkparam.u.utility.fifosize_bufs =
				    FUNC5(pkt);
				/* name */
				cp = (u8 *) linkparam.u.utility.name;
				FUNC0(sizeof(linkparam.u.utility.name)
					     >= UTILITY_NAME_LENGTH);
				for (i = 0;
				     i < UTILITY_NAME_LENGTH
				     && FUNC8(pkt); i++) {
					tmp = FUNC7(pkt);
					*cp++ = tmp;
				}
				/* Length */
				len = FUNC7(pkt);
				linkparam.u.utility.paramlen = len;
				/* Param Data */
				cp = linkparam.u.utility.params;
				while (FUNC8(pkt) && len--) {
					tmp = FUNC7(pkt);
					*cp++ = tmp;
				}
				if (CFCTRL_ERR_BIT & cmdrsp)
					break;
				/* Link ID */
				linkid = FUNC7(pkt);
				/* Length */
				len = FUNC7(pkt);
				/* Param Data */
				FUNC4(pkt, &param, len);
				break;
			default:
				FUNC14("Request setup, invalid type (%d)\n",
					serv);
				goto error;
			}

			rsp.cmd = cmd;
			rsp.param = linkparam;
			FUNC15(&cfctrl->info_list_lock);
			req = FUNC1(cfctrl, &rsp);

			if (CFCTRL_ERR_BIT == (CFCTRL_ERR_BIT & cmdrsp) ||
				FUNC3(pkt)) {
				FUNC13("Invalid O/E bit or parse error "
						"on CAIF control channel\n");
				cfctrl->res.reject_rsp(cfctrl->serv.layer.up,
						       0,
						       req ? req->client_layer
						       : NULL);
			} else {
				cfctrl->res.linksetup_rsp(cfctrl->serv.
							  layer.up, linkid,
							  serv, physlinkid,
							  req ? req->
							  client_layer : NULL);
			}

			FUNC11(req);

			FUNC16(&cfctrl->info_list_lock);
		}
		break;
	case CFCTRL_CMD_LINK_DESTROY:
		linkid = FUNC7(pkt);
		cfctrl->res.linkdestroy_rsp(cfctrl->serv.layer.up, linkid);
		break;
	case CFCTRL_CMD_LINK_ERR:
		FUNC13("Frame Error Indication received\n");
		cfctrl->res.linkerror_ind();
		break;
	case CFCTRL_CMD_ENUM:
		cfctrl->res.enum_rsp();
		break;
	case CFCTRL_CMD_SLEEP:
		cfctrl->res.sleep_rsp();
		break;
	case CFCTRL_CMD_WAKE:
		cfctrl->res.wake_rsp();
		break;
	case CFCTRL_CMD_LINK_RECONF:
		cfctrl->res.restart_rsp();
		break;
	case CFCTRL_CMD_RADIO_SET:
		cfctrl->res.radioset_rsp();
		break;
	default:
		FUNC13("Unrecognized Control Frame\n");
		goto error;
	}
	ret = 0;
error:
	FUNC2(pkt);
	return ret;
}