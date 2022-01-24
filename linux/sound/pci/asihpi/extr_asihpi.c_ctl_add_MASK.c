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
struct snd_kcontrol_new {int /*<<< orphan*/  index; int /*<<< orphan*/  name; } ;
struct snd_card_asihpi {TYPE_1__* pci; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ mixer_dump ; 
 int FUNC1 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol_new*,struct snd_card_asihpi*) ; 

__attribute__((used)) static inline int FUNC3(struct snd_card *card, struct snd_kcontrol_new *ctl,
				struct snd_card_asihpi *asihpi)
{
	int err;

	err = FUNC1(card, FUNC2(ctl, asihpi));
	if (err < 0)
		return err;
	else if (mixer_dump)
		FUNC0(&asihpi->pci->dev, "added %s(%d)\n", ctl->name, ctl->index);

	return 0;
}