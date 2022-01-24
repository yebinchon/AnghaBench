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
struct rt5640_priv {scalar_t__ jd_inverted; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5640_INT_IRQ_ST ; 
 int RT5640_JD_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct rt5640_priv* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct snd_soc_component *component)
{
	struct rt5640_priv *rt5640 = FUNC1(component);
	int val;

	val = FUNC2(component, RT5640_INT_IRQ_ST);
	FUNC0(component->dev, "irq status %#04x\n", val);

	if (rt5640->jd_inverted)
		return !(val & RT5640_JD_STATUS);
	else
		return (val & RT5640_JD_STATUS);
}