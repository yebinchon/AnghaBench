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
struct max98090_priv {int /*<<< orphan*/ * component; int /*<<< orphan*/  pll_work; int /*<<< orphan*/  pll_det_disable_work; int /*<<< orphan*/  pll_det_enable_work; int /*<<< orphan*/  jack_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct max98090_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_component *component)
{
	struct max98090_priv *max98090 = FUNC2(component);

	FUNC0(&max98090->jack_work);
	FUNC0(&max98090->pll_det_enable_work);
	FUNC1(&max98090->pll_det_disable_work);
	FUNC1(&max98090->pll_work);
	max98090->component = NULL;
}