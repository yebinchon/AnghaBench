#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * area; } ;
struct pcxhr_mgr {unsigned int num_cards; scalar_t__ irq; TYPE_3__* pci; struct pcxhr_mgr* prmh; TYPE_2__ hostport; scalar_t__ dsp_loaded; TYPE_1__** chip; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct pcxhr_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcxhr_mgr*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcxhr_mgr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct pcxhr_mgr *mgr)
{
	unsigned int i;

	for (i = 0; i < mgr->num_cards; i++) {
		if (mgr->chip[i])
			FUNC6(mgr->chip[i]->card);
	}

	/* reset board if some firmware was loaded */
	if(mgr->dsp_loaded) {
		FUNC5(mgr);
		FUNC0(&mgr->pci->dev, "reset pcxhr !\n");
	}

	/* release irq  */
	if (mgr->irq >= 0)
		FUNC1(mgr->irq, mgr);

	FUNC4(mgr->pci);

	/* free hostport purgebuffer */
	if (mgr->hostport.area) {
		FUNC7(&mgr->hostport);
		mgr->hostport.area = NULL;
	}

	FUNC2(mgr->prmh);

	FUNC3(mgr->pci);
	FUNC2(mgr);
	return 0;
}