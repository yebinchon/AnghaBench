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
struct wm9705_priv {int /*<<< orphan*/  ac97; int /*<<< orphan*/  mfd_pdata; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_SOC_AC97_BUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 struct wm9705_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct wm9705_priv *wm9705 = FUNC2(component);

	if (FUNC0(CONFIG_SND_SOC_AC97_BUS) && !wm9705->mfd_pdata) {
		FUNC1(component);
		FUNC3(wm9705->ac97);
	}
}