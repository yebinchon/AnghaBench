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
struct rt5651_priv {int jd_src; scalar_t__ jd_active_high; scalar_t__ gpiod_hp_det; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5651_INT_IRQ_ST ; 
#define  RT5651_JD1_1 130 
#define  RT5651_JD1_2 129 
#define  RT5651_JD2 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 struct rt5651_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct snd_soc_component *component)
{
	struct rt5651_priv *rt5651 = FUNC2(component);
	int val;

	if (rt5651->gpiod_hp_det) {
		val = FUNC1(rt5651->gpiod_hp_det);
		FUNC0(component->dev, "jack-detect gpio %d\n", val);
		return val;
	}

	val = FUNC3(component, RT5651_INT_IRQ_ST);
	FUNC0(component->dev, "irq status %#04x\n", val);

	switch (rt5651->jd_src) {
	case RT5651_JD1_1:
		val &= 0x1000;
		break;
	case RT5651_JD1_2:
		val &= 0x2000;
		break;
	case RT5651_JD2:
		val &= 0x4000;
		break;
	default:
		break;
	}

	if (rt5651->jd_active_high)
		return val != 0;
	else
		return val == 0;
}