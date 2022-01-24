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
struct snd_soc_card {struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {int gpio; char* name; int report; int invert; int debounce_time; } ;
struct TYPE_4__ {char* pin; int mask; } ;
struct asoc_simple_jack {TYPE_1__ gpio; int /*<<< orphan*/  jack; TYPE_2__ pin; } ;
typedef  int /*<<< orphan*/  prop ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;

/* Variables and functions */
 int ENOENT ; 
 int EPROBE_DEFER ; 
 int OF_GPIO_ACTIVE_LOW ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_card*,char*,int,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 

int FUNC5(struct snd_soc_card *card,
			  struct asoc_simple_jack *sjack,
			  int is_hp, char *prefix)
{
	struct device *dev = card->dev;
	enum of_gpio_flags flags;
	char prop[128];
	char *pin_name;
	char *gpio_name;
	int mask;
	int det;

	if (!prefix)
		prefix = "";

	sjack->gpio.gpio = -ENOENT;

	if (is_hp) {
		FUNC4(prop, sizeof(prop), "%shp-det-gpio", prefix);
		pin_name	= "Headphones";
		gpio_name	= "Headphone detection";
		mask		= SND_JACK_HEADPHONE;
	} else {
		FUNC4(prop, sizeof(prop), "%smic-det-gpio", prefix);
		pin_name	= "Mic Jack";
		gpio_name	= "Mic detection";
		mask		= SND_JACK_MICROPHONE;
	}

	det = FUNC1(dev->of_node, prop, 0, &flags);
	if (det == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	if (FUNC0(det)) {
		sjack->pin.pin		= pin_name;
		sjack->pin.mask		= mask;

		sjack->gpio.name	= gpio_name;
		sjack->gpio.report	= mask;
		sjack->gpio.gpio	= det;
		sjack->gpio.invert	= !!(flags & OF_GPIO_ACTIVE_LOW);
		sjack->gpio.debounce_time = 150;

		FUNC2(card, pin_name, mask,
				      &sjack->jack,
				      &sjack->pin, 1);

		FUNC3(&sjack->jack, 1,
				       &sjack->gpio);
	}

	return 0;
}