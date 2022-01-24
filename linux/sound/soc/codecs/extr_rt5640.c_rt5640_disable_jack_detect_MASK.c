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
struct rt5640_priv {TYPE_1__* jack; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_JACK_BTN_0 ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt5640_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 
 struct rt5640_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component)
{
	struct rt5640_priv *rt5640 = FUNC4(component);

	FUNC0(rt5640->irq);
	FUNC1(rt5640);

	if (rt5640->jack->status & SND_JACK_MICROPHONE) {
		FUNC3(component);
		FUNC2(component);
		FUNC5(rt5640->jack, 0, SND_JACK_BTN_0);
	}

	rt5640->jack = NULL;
}