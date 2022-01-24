#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_ali {TYPE_1__* card; TYPE_2__* pci; int /*<<< orphan*/  irq; int /*<<< orphan*/  port; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_ali*) ; 
 int /*<<< orphan*/  snd_ali_card_interrupt ; 

__attribute__((used)) static int FUNC5(struct snd_ali *codec)
{
	int err;

	FUNC0(codec->card->dev, "resources allocation ...\n");
	err = FUNC2(codec->pci, "ALI 5451");
	if (err < 0)
		return err;
	codec->port = FUNC3(codec->pci, 0);

	if (FUNC4(codec->pci->irq, snd_ali_card_interrupt,
			IRQF_SHARED, KBUILD_MODNAME, codec)) {
		FUNC1(codec->card->dev, "Unable to request irq.\n");
		return -EBUSY;
	}
	codec->irq = codec->pci->irq;
	FUNC0(codec->card->dev, "resources allocated.\n");
	return 0;
}