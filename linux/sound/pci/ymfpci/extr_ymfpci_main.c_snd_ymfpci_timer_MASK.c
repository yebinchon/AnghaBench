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
struct snd_ymfpci {struct snd_timer* timer; TYPE_1__* card; } ;
struct snd_timer_id {int device; scalar_t__ subdevice; int /*<<< orphan*/  card; int /*<<< orphan*/  dev_sclass; int /*<<< orphan*/  dev_class; } ;
struct snd_timer {int /*<<< orphan*/  hw; struct snd_ymfpci* private_data; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_TIMER_CLASS_CARD ; 
 int /*<<< orphan*/  SNDRV_TIMER_SCLASS_NONE ; 
 int FUNC0 (TYPE_1__*,char*,struct snd_timer_id*,struct snd_timer**) ; 
 int /*<<< orphan*/  snd_ymfpci_timer_hw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(struct snd_ymfpci *chip, int device)
{
	struct snd_timer *timer = NULL;
	struct snd_timer_id tid;
	int err;

	tid.dev_class = SNDRV_TIMER_CLASS_CARD;
	tid.dev_sclass = SNDRV_TIMER_SCLASS_NONE;
	tid.card = chip->card->number;
	tid.device = device;
	tid.subdevice = 0;
	if ((err = FUNC0(chip->card, "YMFPCI", &tid, &timer)) >= 0) {
		FUNC1(timer->name, "YMFPCI timer");
		timer->private_data = chip;
		timer->hw = snd_ymfpci_timer_hw;
	}
	chip->timer = timer;
	return err;
}