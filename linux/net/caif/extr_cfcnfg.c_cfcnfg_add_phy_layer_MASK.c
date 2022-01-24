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
typedef  void* u8 ;
struct net_device {int ifindex; } ;
struct cflayer {void* id; } ;
struct TYPE_2__ {struct net_device* dev; void* id; } ;
struct cfcnfg_phyinfo {int pref; int ifindex; int head_room; int use_fcs; int /*<<< orphan*/  node; struct cflayer* frm_layer; struct cflayer* phy_layer; TYPE_1__ dev_info; void* id; } ;
struct cfcnfg {int /*<<< orphan*/  lock; int /*<<< orphan*/  phys; struct cflayer* mux; } ;
typedef  enum cfcnfg_phy_preference { ____Placeholder_cfcnfg_phy_preference } cfcnfg_phy_preference ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/ * FUNC0 (struct cfcnfg*,void*) ; 
 struct cflayer* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfcnfg_phyinfo*) ; 
 struct cfcnfg_phyinfo* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cflayer*,struct cflayer*) ; 
 int /*<<< orphan*/  FUNC5 (struct cflayer*,struct cflayer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10(struct cfcnfg *cnfg,
		     struct net_device *dev, struct cflayer *phy_layer,
		     enum cfcnfg_phy_preference pref,
		     struct cflayer *link_support,
		     bool fcs, int head_room)
{
	struct cflayer *frml;
	struct cfcnfg_phyinfo *phyinfo = NULL;
	int i;
	u8 phyid;

	FUNC7(&cnfg->lock);

	/* CAIF protocol allow maximum 6 link-layers */
	for (i = 0; i < 7; i++) {
		phyid = (dev->ifindex + i) & 0x7;
		if (phyid == 0)
			continue;
		if (FUNC0(cnfg, phyid) == NULL)
			goto got_phyid;
	}
	FUNC9("Too many CAIF Link Layers (max 6)\n");
	goto out;

got_phyid:
	phyinfo = FUNC3(sizeof(struct cfcnfg_phyinfo), GFP_ATOMIC);
	if (!phyinfo)
		goto out_err;

	phy_layer->id = phyid;
	phyinfo->pref = pref;
	phyinfo->id = phyid;
	phyinfo->dev_info.id = phyid;
	phyinfo->dev_info.dev = dev;
	phyinfo->phy_layer = phy_layer;
	phyinfo->ifindex = dev->ifindex;
	phyinfo->head_room = head_room;
	phyinfo->use_fcs = fcs;

	frml = FUNC1(phyid, fcs);

	if (!frml)
		goto out_err;
	phyinfo->frm_layer = frml;
	FUNC5(frml, cnfg->mux);

	if (link_support != NULL) {
		link_support->id = phyid;
		FUNC4(frml, link_support);
		FUNC5(link_support, frml);
		FUNC4(link_support, phy_layer);
		FUNC5(phy_layer, link_support);
	} else {
		FUNC4(frml, phy_layer);
		FUNC5(phy_layer, frml);
	}

	FUNC6(&phyinfo->node, &cnfg->phys);
out:
	FUNC8(&cnfg->lock);
	return;

out_err:
	FUNC2(phyinfo);
	FUNC8(&cnfg->lock);
}