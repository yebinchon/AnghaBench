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
struct snd_soc_component {int dummy; } ;
struct es8316_priv {int /*<<< orphan*/  lock; TYPE_1__* jack; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ES8316_GPIO_DEBOUNCE ; 
 int /*<<< orphan*/  ES8316_GPIO_ENABLE_INTERRUPT ; 
 int /*<<< orphan*/  SND_JACK_BTN_0 ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct es8316_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct snd_soc_component *component)
{
	struct es8316_priv *es8316 = FUNC4(component);

	FUNC0(es8316->irq);

	FUNC2(&es8316->lock);

	FUNC5(component, ES8316_GPIO_DEBOUNCE,
				      ES8316_GPIO_ENABLE_INTERRUPT, 0);

	if (es8316->jack->status & SND_JACK_MICROPHONE) {
		FUNC1(component);
		FUNC6(es8316->jack, 0, SND_JACK_BTN_0);
	}

	es8316->jack = NULL;

	FUNC3(&es8316->lock);
}