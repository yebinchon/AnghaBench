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
struct cflayer {int /*<<< orphan*/  id; } ;
struct cfcnfg_phyinfo {int up; int /*<<< orphan*/  frm_layer; } ;
struct cfcnfg {int /*<<< orphan*/  mux; } ;

/* Variables and functions */
 int ENODEV ; 
 struct cfcnfg_phyinfo* FUNC0 (struct cfcnfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct cfcnfg *cnfg, struct cflayer *phy_layer,
			 bool up)
{
	struct cfcnfg_phyinfo *phyinfo;

	FUNC5();
	phyinfo = FUNC0(cnfg, phy_layer->id);
	if (phyinfo == NULL) {
		FUNC6();
		return -ENODEV;
	}

	if (phyinfo->up == up) {
		FUNC6();
		return 0;
	}
	phyinfo->up = up;

	if (up) {
		FUNC1(phyinfo->frm_layer);
		FUNC4(cnfg->mux, phyinfo->frm_layer,
					phy_layer->id);
	} else {
		FUNC3(cnfg->mux, phy_layer->id);
		FUNC2(phyinfo->frm_layer);
	}

	FUNC6();
	return 0;
}