#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct cflayer {int /*<<< orphan*/  (* ctrlcmd ) (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  id; } ;
struct TYPE_9__ {struct net_device* dev; } ;
struct cfcnfg_phyinfo {TYPE_2__ dev_info; TYPE_1__* phy_layer; int /*<<< orphan*/  id; } ;
struct cfcnfg {struct cflayer* mux; int /*<<< orphan*/  ctrl; } ;
typedef  enum cfctrl_srv { ____Placeholder_cfctrl_srv } cfctrl_srv ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIF_CTRLCMD_INIT_FAIL_RSP ; 
 int /*<<< orphan*/  CAIF_CTRLCMD_INIT_RSP ; 
#define  CFCTRL_SRV_DATAGRAM 133 
#define  CFCTRL_SRV_DBG 132 
#define  CFCTRL_SRV_RFM 131 
#define  CFCTRL_SRV_UTIL 130 
#define  CFCTRL_SRV_VEI 129 
#define  CFCTRL_SRV_VIDEO 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cfcnfg_phyinfo* FUNC1 (struct cfcnfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cflayer* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct cflayer* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct cflayer*,struct cflayer*,int /*<<< orphan*/ ) ; 
 struct cflayer* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct cflayer* FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct cflayer* FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct cflayer* FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct cfcnfg* FUNC10 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC11 (struct cflayer*,struct cflayer*) ; 
 int /*<<< orphan*/  FUNC12 (struct cflayer*,struct cflayer*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(struct cflayer *layer, u8 channel_id, enum cfctrl_srv serv,
		  u8 phyid, struct cflayer *adapt_layer)
{
	struct cfcnfg *cnfg = FUNC10(layer);
	struct cflayer *servicel = NULL;
	struct cfcnfg_phyinfo *phyinfo;
	struct net_device *netdev;

	if (channel_id == 0) {
		FUNC15("received channel_id zero\n");
		if (adapt_layer != NULL && adapt_layer->ctrlcmd != NULL)
			adapt_layer->ctrlcmd(adapt_layer,
						CAIF_CTRLCMD_INIT_FAIL_RSP, 0);
		return;
	}

	FUNC16();

	if (adapt_layer == NULL) {
		FUNC13("link setup response but no client exist, send linkdown back\n");
		FUNC2(cnfg->ctrl, channel_id, NULL);
		goto unlock;
	}

	FUNC0(cnfg != NULL);
	FUNC0(phyid != 0);

	phyinfo = FUNC1(cnfg, phyid);
	if (phyinfo == NULL) {
		FUNC14("ERROR: Link Layer Device disappeared while connecting\n");
		goto unlock;
	}

	FUNC0(phyinfo != NULL);
	FUNC0(phyinfo->id == phyid);
	FUNC0(phyinfo->phy_layer != NULL);
	FUNC0(phyinfo->phy_layer->id == phyid);

	adapt_layer->id = channel_id;

	switch (serv) {
	case CFCTRL_SRV_VEI:
		servicel = FUNC8(channel_id, &phyinfo->dev_info);
		break;
	case CFCTRL_SRV_DATAGRAM:
		servicel = FUNC4(channel_id,
					&phyinfo->dev_info);
		break;
	case CFCTRL_SRV_RFM:
		netdev = phyinfo->dev_info.dev;
		servicel = FUNC6(channel_id, &phyinfo->dev_info,
						netdev->mtu);
		break;
	case CFCTRL_SRV_UTIL:
		servicel = FUNC7(channel_id, &phyinfo->dev_info);
		break;
	case CFCTRL_SRV_VIDEO:
		servicel = FUNC9(channel_id, &phyinfo->dev_info);
		break;
	case CFCTRL_SRV_DBG:
		servicel = FUNC3(channel_id, &phyinfo->dev_info);
		break;
	default:
		FUNC14("Protocol error. Link setup response - unknown channel type\n");
		goto unlock;
	}
	if (!servicel)
		goto unlock;
	FUNC11(servicel, cnfg->mux);
	FUNC5(cnfg->mux, servicel, channel_id);
	FUNC12(servicel, adapt_layer);
	FUNC11(adapt_layer, servicel);

	FUNC17();

	servicel->ctrlcmd(servicel, CAIF_CTRLCMD_INIT_RSP, 0);
	return;
unlock:
	FUNC17();
}