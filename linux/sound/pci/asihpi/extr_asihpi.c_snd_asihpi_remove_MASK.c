#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_card_asihpi {int /*<<< orphan*/  t; } ;
struct pci_dev {int dummy; } ;
struct hpi_adapter {TYPE_2__* snd_card; TYPE_1__* adapter; int /*<<< orphan*/ * interrupt_callback; scalar_t__ interrupt_mode; } ;
struct TYPE_4__ {struct snd_card_asihpi* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ADAPTER_PROPERTY_IRQ_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct hpi_adapter* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pci_dev)
{
	struct hpi_adapter *hpi = FUNC3(pci_dev);
	struct snd_card_asihpi *asihpi = hpi->snd_card->private_data;

	/* Stop interrupts */
	if (hpi->interrupt_mode) {
		hpi->interrupt_callback = NULL;
		FUNC2(FUNC1(hpi->adapter->index,
			HPI_ADAPTER_PROPERTY_IRQ_RATE, 0, 0));
		FUNC5(&asihpi->t);
	}

	FUNC4(hpi->snd_card);
	hpi->snd_card = NULL;
	FUNC0(pci_dev);
}