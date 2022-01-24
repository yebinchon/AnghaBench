#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  truesize; scalar_t__ data; } ;
struct mpoa_client {int /*<<< orphan*/  parameters; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  params; } ;
struct k_message {int type; TYPE_2__ content; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
#define  CACHE_IMPOS_RCVD 138 
#define  CLEAN_UP_AND_EXIT 137 
 int const DIE ; 
#define  EGRESS_PURGE_RCVD 136 
#define  INGRESS_PURGE_RCVD 135 
#define  MPOA_RES_REPLY_RCVD 134 
#define  MPOA_TRIGGER_RCVD 133 
 int /*<<< orphan*/  FUNC0 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct k_message*,struct mpoa_client*) ; 
#define  MPS_DEATH 132 
#define  RELOAD 131 
#define  SET_MPC_CTRL_ADDR 130 
#define  SET_MPC_PARAMS 129 
#define  SET_MPS_MAC_ADDR 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct k_message*,struct mpoa_client*,int const) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct k_message*,struct mpoa_client*) ; 
 struct mpoa_client* FUNC8 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC9 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC15 (struct k_message*,struct mpoa_client*) ; 
 TYPE_3__* FUNC16 (struct atm_vcc*) ; 

__attribute__((used)) static int FUNC17(struct atm_vcc *vcc, struct sk_buff *skb)
{

	struct mpoa_client *mpc = FUNC8(vcc);
	struct k_message *mesg = (struct k_message *)skb->data;
	FUNC3(FUNC13(skb->truesize, &FUNC16(vcc)->sk_wmem_alloc));

	if (mpc == NULL) {
		FUNC12("no mpc found\n");
		return 0;
	}
	FUNC5("(%s)", mpc->dev ? mpc->dev->name : "<unknown>");
	switch (mesg->type) {
	case MPOA_RES_REPLY_RCVD:
		FUNC6("mpoa_res_reply_rcvd\n");
		FUNC1(mesg, mpc);
		break;
	case MPOA_TRIGGER_RCVD:
		FUNC6("mpoa_trigger_rcvd\n");
		FUNC2(mesg, mpc);
		break;
	case INGRESS_PURGE_RCVD:
		FUNC6("nhrp_purge_rcvd\n");
		FUNC9(mesg, mpc);
		break;
	case EGRESS_PURGE_RCVD:
		FUNC6("egress_purge_reply_rcvd\n");
		FUNC7(mesg, mpc);
		break;
	case MPS_DEATH:
		FUNC6("mps_death\n");
		FUNC11(mesg, mpc);
		break;
	case CACHE_IMPOS_RCVD:
		FUNC6("cache_impos_rcvd\n");
		FUNC0(mesg, mpc);
		break;
	case SET_MPC_CTRL_ADDR:
		FUNC6("set_mpc_ctrl_addr\n");
		FUNC14(mesg, mpc);
		break;
	case SET_MPS_MAC_ADDR:
		FUNC6("set_mps_mac_addr\n");
		FUNC15(mesg, mpc);
		break;
	case CLEAN_UP_AND_EXIT:
		FUNC6("clean_up_and_exit\n");
		FUNC4(mesg, mpc, DIE);
		break;
	case RELOAD:
		FUNC6("reload\n");
		FUNC4(mesg, mpc, RELOAD);
		break;
	case SET_MPC_PARAMS:
		FUNC6("set_mpc_params\n");
		mpc->parameters = mesg->content.params;
		break;
	default:
		FUNC6("unknown message %d\n", mesg->type);
		break;
	}
	FUNC10(skb);

	return 0;
}