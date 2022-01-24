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

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int WM8990_ALRCGPIO1 ; 
 int /*<<< orphan*/  WM8990_AUDIO_INTERFACE_4 ; 
 int /*<<< orphan*/  WM8990_GPIO1_GPIO2 ; 
 int WM8990_GPIO1_SEL_MASK ; 
 int /*<<< orphan*/  WM8990_LEFT_OUTPUT_VOLUME ; 
 int WM8990_OPCLK_ENA ; 
 int /*<<< orphan*/  WM8990_POWER_MANAGEMENT_2 ; 
 int /*<<< orphan*/  WM8990_RIGHT_OUTPUT_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	FUNC3(component);

	/* charge output caps */
	FUNC0(component, SND_SOC_BIAS_STANDBY);

	FUNC1(component, WM8990_AUDIO_INTERFACE_4,
			    WM8990_ALRCGPIO1, WM8990_ALRCGPIO1);

	FUNC1(component, WM8990_GPIO1_GPIO2,
			    WM8990_GPIO1_SEL_MASK, 1);

	FUNC1(component, WM8990_POWER_MANAGEMENT_2,
			    WM8990_OPCLK_ENA, WM8990_OPCLK_ENA);

	FUNC2(component, WM8990_LEFT_OUTPUT_VOLUME, 0x50 | (1<<8));
	FUNC2(component, WM8990_RIGHT_OUTPUT_VOLUME, 0x50 | (1<<8));

	return 0;
}