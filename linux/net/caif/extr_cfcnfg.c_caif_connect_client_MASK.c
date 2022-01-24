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
struct net {int dummy; } ;
struct cflayer {scalar_t__ id; int /*<<< orphan*/ * ctrlcmd; int /*<<< orphan*/ * receive; } ;
struct cfctrl_link_param {scalar_t__ phyid; size_t linktype; } ;
struct cfcnfg_phyinfo {scalar_t__ id; int ifindex; int head_room; TYPE_1__* phy_layer; struct cflayer* frm_layer; } ;
struct cfcnfg {int /*<<< orphan*/  ctrl; } ;
struct caif_connect_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cfcnfg*,struct caif_connect_request*,struct cfctrl_link_param*) ; 
 struct cfcnfg_phyinfo* FUNC2 (struct cfcnfg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct cfctrl_link_param*,struct cflayer*) ; 
 struct cfcnfg* FUNC5 (struct net*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int* protohead ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct net *net, struct caif_connect_request *conn_req,
			struct cflayer *adap_layer, int *ifindex,
			int *proto_head, int *proto_tail)
{
	struct cflayer *frml;
	struct cfcnfg_phyinfo *phy;
	int err;
	struct cfctrl_link_param param;
	struct cfcnfg *cfg = FUNC5(net);

	FUNC7();
	err = FUNC1(cfg, conn_req, &param);
	if (err)
		goto unlock;

	phy = FUNC2(cfg, param.phyid);
	if (!phy) {
		err = -ENODEV;
		goto unlock;
	}
	err = -EINVAL;

	if (adap_layer == NULL) {
		FUNC6("adap_layer is zero\n");
		goto unlock;
	}
	if (adap_layer->receive == NULL) {
		FUNC6("adap_layer->receive is NULL\n");
		goto unlock;
	}
	if (adap_layer->ctrlcmd == NULL) {
		FUNC6("adap_layer->ctrlcmd == NULL\n");
		goto unlock;
	}

	err = -ENODEV;
	frml = phy->frm_layer;
	if (frml == NULL) {
		FUNC6("Specified PHY type does not exist!\n");
		goto unlock;
	}
	FUNC0(param.phyid == phy->id);
	FUNC0(phy->frm_layer->id ==
		     param.phyid);
	FUNC0(phy->phy_layer->id ==
		     param.phyid);

	*ifindex = phy->ifindex;
	*proto_tail = 2;
	*proto_head = protohead[param.linktype] + phy->head_room;

	FUNC8();

	/* FIXME: ENUMERATE INITIALLY WHEN ACTIVATING PHYSICAL INTERFACE */
	FUNC3(cfg->ctrl, param.phyid);
	return FUNC4(cfg->ctrl, &param, adap_layer);

unlock:
	FUNC8();
	return err;
}