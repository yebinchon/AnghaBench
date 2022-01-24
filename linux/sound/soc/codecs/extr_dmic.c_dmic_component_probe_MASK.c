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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct dmic {scalar_t__ wakeup_delay; scalar_t__ modeswitch_delay; int /*<<< orphan*/  gpio_en; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_MODESWITCH_DELAY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct dmic* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ modeswitch_delay ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,struct dmic*) ; 
 scalar_t__ wakeup_delay ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct dmic *dmic;

	dmic = FUNC4(component->dev, sizeof(*dmic), GFP_KERNEL);
	if (!dmic)
		return -ENOMEM;

	dmic->gpio_en = FUNC3(component->dev,
						"dmicen", GPIOD_OUT_LOW);
	if (FUNC0(dmic->gpio_en))
		return FUNC1(dmic->gpio_en);

	FUNC2(component->dev, "wakeup-delay-ms",
				 &dmic->wakeup_delay);
	FUNC2(component->dev, "modeswitch-delay-ms",
				 &dmic->modeswitch_delay);
	if (wakeup_delay)
		dmic->wakeup_delay  = wakeup_delay;
	if (modeswitch_delay)
		dmic->modeswitch_delay  = modeswitch_delay;

	if (dmic->modeswitch_delay > MAX_MODESWITCH_DELAY)
		dmic->modeswitch_delay = MAX_MODESWITCH_DELAY;

	FUNC5(component, dmic);

	return 0;
}