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
struct snd_soc_jack {int status; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct es8316_priv {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; struct snd_soc_jack* jack; int /*<<< orphan*/  jd_inverted; } ;

/* Variables and functions */
 int /*<<< orphan*/  ES8316_GPIO_DEBOUNCE ; 
 int /*<<< orphan*/  ES8316_GPIO_ENABLE_INTERRUPT ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct es8316_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct es8316_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct snd_soc_component *component,
				      struct snd_soc_jack *jack)
{
	struct es8316_priv *es8316 = FUNC6(component);

	/*
	 * Init es8316->jd_inverted here and not in the probe, as we cannot
	 * guarantee that the bytchr-es8316 driver, which might set this
	 * property, will probe before us.
	 */
	es8316->jd_inverted = FUNC0(component->dev,
							"everest,jack-detect-inverted");

	FUNC4(&es8316->lock);

	es8316->jack = jack;

	if (es8316->jack->status & SND_JACK_MICROPHONE)
		FUNC2(component);

	FUNC7(component, ES8316_GPIO_DEBOUNCE,
				      ES8316_GPIO_ENABLE_INTERRUPT,
				      ES8316_GPIO_ENABLE_INTERRUPT);

	FUNC5(&es8316->lock);

	/* Enable irq and sync initial jack state */
	FUNC1(es8316->irq);
	FUNC3(es8316->irq, es8316);
}