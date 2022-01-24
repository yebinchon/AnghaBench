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
typedef  scalar_t__ u16 ;
struct cflayer {scalar_t__ id; struct cflayer* phy_layer; struct cflayer* dn; struct cflayer* frm_layer; int /*<<< orphan*/  node; } ;
struct cfcnfg_phyinfo {scalar_t__ id; struct cfcnfg_phyinfo* phy_layer; struct cfcnfg_phyinfo* dn; struct cfcnfg_phyinfo* frm_layer; int /*<<< orphan*/  node; } ;
struct cfcnfg {int /*<<< orphan*/  lock; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cflayer* FUNC1 (struct cfcnfg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cflayer*) ; 
 scalar_t__ FUNC3 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC4 (struct cflayer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cflayer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC7 (struct cflayer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct cflayer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int FUNC16(struct cfcnfg *cnfg, struct cflayer *phy_layer)
{
	struct cflayer *frml, *frml_dn;
	u16 phyid;
	struct cfcnfg_phyinfo *phyinfo;

	FUNC11();

	FUNC12(&cnfg->lock);

	phyid = phy_layer->id;
	phyinfo = FUNC1(cnfg, phyid);

	if (phyinfo == NULL) {
		FUNC13(&cnfg->lock);
		return 0;
	}
	FUNC0(phyid == phyinfo->id);
	FUNC0(phy_layer == phyinfo->phy_layer);
	FUNC0(phy_layer->id == phyid);
	FUNC0(phyinfo->frm_layer->id == phyid);

	FUNC10(&phyinfo->node);
	FUNC15();

	/* Fail if reference count is not zero */
	if (FUNC3(phyinfo->frm_layer) != 0) {
		FUNC14("Wait for device inuse\n");
		FUNC9(&phyinfo->node, &cnfg->phys);
		FUNC13(&cnfg->lock);
		return -EAGAIN;
	}

	frml = phyinfo->frm_layer;
	frml_dn = frml->dn;
	FUNC5(frml, NULL);
	FUNC4(frml, NULL);
	if (phy_layer != frml_dn) {
		FUNC8(frml_dn, NULL);
		FUNC7(frml_dn, NULL);
	}
	FUNC8(phy_layer, NULL);

	if (phyinfo->phy_layer != frml_dn)
		FUNC6(frml_dn);

	FUNC2(frml);
	FUNC6(phyinfo);
	FUNC13(&cnfg->lock);

	return 0;
}