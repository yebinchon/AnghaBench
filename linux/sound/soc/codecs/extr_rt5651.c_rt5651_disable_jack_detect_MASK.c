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
struct snd_soc_component {int dummy; } ;
struct rt5651_priv {int /*<<< orphan*/ * hp_jack; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_JACK_BTN_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt5651_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 
 scalar_t__ FUNC4 (struct rt5651_priv*) ; 
 struct rt5651_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct snd_soc_component *component)
{
	struct rt5651_priv *rt5651 = FUNC5(component);

	FUNC0(rt5651->irq);
	FUNC1(rt5651);

	if (FUNC4(rt5651)) {
		FUNC3(component);
		FUNC2(component);
		FUNC6(rt5651->hp_jack, 0, SND_JACK_BTN_0);
	}

	rt5651->hp_jack = NULL;
}