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
struct snd_card {struct azx* private_data; } ;
struct pci_dev {int dummy; } ;
struct azx {scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct azx*) ; 
 struct snd_card* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pci)
{
	struct snd_card *card = FUNC1(pci);
	struct azx *chip;

	if (!card)
		return;
	chip = card->private_data;
	if (chip && chip->running)
		FUNC0(chip);
}