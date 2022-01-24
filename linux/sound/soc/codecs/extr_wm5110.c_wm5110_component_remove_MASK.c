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
struct TYPE_4__ {TYPE_1__* arizona; int /*<<< orphan*/ * adsp; } ;
struct wm5110_priv {TYPE_2__ core; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dapm; } ;

/* Variables and functions */
 int WM5110_NUM_ADSP ; 
 struct wm5110_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component)
{
	struct wm5110_priv *priv = FUNC0(component);
	int i;

	for (i = 0; i < WM5110_NUM_ADSP; ++i)
		FUNC1(&priv->core.adsp[i], component);

	priv->core.arizona->dapm = NULL;
}