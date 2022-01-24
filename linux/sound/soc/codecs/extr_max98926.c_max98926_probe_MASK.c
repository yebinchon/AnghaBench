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
struct max98926_priv {int /*<<< orphan*/  regmap; struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX98926_DOUT_HIZ_CFG4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct max98926_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component)
{
	struct max98926_priv *max98926 = FUNC1(component);

	max98926->component = component;

	/* Hi-Z all the slots */
	FUNC0(max98926->regmap, MAX98926_DOUT_HIZ_CFG4, 0xF0);
	return 0;
}