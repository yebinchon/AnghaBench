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
struct snd_card {char* driver; char* shortname; struct aaci* private_data; int /*<<< orphan*/  longname; int /*<<< orphan*/  private_free; } ;
struct TYPE_2__ {scalar_t__ start; } ;
struct amba_device {int /*<<< orphan*/ * irq; TYPE_1__ res; int /*<<< orphan*/  dev; } ;
struct aaci {int maincr; struct amba_device* dev; struct snd_card* card; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  ac97_sem; } ;

/* Variables and functions */
 char* DRIVER_NAME ; 
 int MAINCR_IE ; 
 int MAINCR_SL1RXEN ; 
 int MAINCR_SL1TXEN ; 
 int MAINCR_SL2RXEN ; 
 int MAINCR_SL2TXEN ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  aaci_free_card ; 
 int FUNC0 (struct amba_device*) ; 
 int FUNC1 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct snd_card**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int,int,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static struct aaci *FUNC6(struct amba_device *dev)
{
	struct aaci *aaci;
	struct snd_card *card;
	int err;

	err = FUNC3(&dev->dev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1,
			   THIS_MODULE, sizeof(struct aaci), &card);
	if (err < 0)
		return NULL;

	card->private_free = aaci_free_card;

	FUNC5(card->driver, DRIVER_NAME, sizeof(card->driver));
	FUNC5(card->shortname, "ARM AC'97 Interface", sizeof(card->shortname));
	FUNC4(card->longname, sizeof(card->longname),
		 "%s PL%03x rev%u at 0x%08llx, irq %d",
		 card->shortname, FUNC0(dev), FUNC1(dev),
		 (unsigned long long)dev->res.start, dev->irq[0]);

	aaci = card->private_data;
	FUNC2(&aaci->ac97_sem);
	FUNC2(&aaci->irq_lock);
	aaci->card = card;
	aaci->dev = dev;

	/* Set MAINCR to allow slot 1 and 2 data IO */
	aaci->maincr = MAINCR_IE | MAINCR_SL1RXEN | MAINCR_SL1TXEN |
		       MAINCR_SL2RXEN | MAINCR_SL2TXEN;

	return aaci;
}