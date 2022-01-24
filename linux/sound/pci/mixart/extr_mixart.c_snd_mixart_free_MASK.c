#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * area; } ;
struct mixart_mgr {unsigned int num_cards; scalar_t__ irq; TYPE_4__* pci; TYPE_3__ bufferinfo; TYPE_3__ flowinfo; TYPE_2__* mem; scalar_t__ dsp_loaded; TYPE_1__** chip; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  virt; } ;
struct TYPE_6__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct mixart_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mixart_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct mixart_mgr*) ; 
 int /*<<< orphan*/  FUNC9 (struct mixart_mgr*) ; 

__attribute__((used)) static int FUNC10(struct mixart_mgr *mgr)
{
	unsigned int i;

	for (i = 0; i < mgr->num_cards; i++) {
		if (mgr->chip[i])
			FUNC6(mgr->chip[i]->card);
	}

	/* stop mailbox */
	FUNC8(mgr);

	/* release irq  */
	if (mgr->irq >= 0)
		FUNC1(mgr->irq, mgr);

	/* reset board if some firmware was loaded */
	if(mgr->dsp_loaded) {
		FUNC9(mgr);
		FUNC0(&mgr->pci->dev, "reset miXart !\n");
	}

	/* release the i/o ports */
	for (i = 0; i < 2; ++i)
		FUNC2(mgr->mem[i].virt);

	FUNC5(mgr->pci);

	/* free flowarray */
	if(mgr->flowinfo.area) {
		FUNC7(&mgr->flowinfo);
		mgr->flowinfo.area = NULL;
	}
	/* free bufferarray */
	if(mgr->bufferinfo.area) {
		FUNC7(&mgr->bufferinfo);
		mgr->bufferinfo.area = NULL;
	}

	FUNC4(mgr->pci);
	FUNC3(mgr);
	return 0;
}