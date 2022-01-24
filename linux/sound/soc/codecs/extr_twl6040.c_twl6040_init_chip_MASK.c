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
 int /*<<< orphan*/  TWL6040_REG_EARCTL ; 
 int /*<<< orphan*/  TWL6040_REG_HFLGAIN ; 
 int /*<<< orphan*/  TWL6040_REG_HFOTRIM ; 
 int /*<<< orphan*/  TWL6040_REG_HFRGAIN ; 
 int /*<<< orphan*/  TWL6040_REG_HSGAIN ; 
 int /*<<< orphan*/  TWL6040_REG_HSOTRIM ; 
 int /*<<< orphan*/  TWL6040_REG_LINEGAIN ; 
 int /*<<< orphan*/  TWL6040_REG_MICLCTL ; 
 int /*<<< orphan*/  TWL6040_REG_MICRCTL ; 
 int /*<<< orphan*/  TWL6040_REG_TRIM1 ; 
 int /*<<< orphan*/  TWL6040_REG_TRIM2 ; 
 int /*<<< orphan*/  TWL6040_REG_TRIM3 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component)
{
	FUNC0(component, TWL6040_REG_TRIM1);
	FUNC0(component, TWL6040_REG_TRIM2);
	FUNC0(component, TWL6040_REG_TRIM3);
	FUNC0(component, TWL6040_REG_HSOTRIM);
	FUNC0(component, TWL6040_REG_HFOTRIM);

	/* Change chip defaults */
	/* No imput selected for microphone amplifiers */
	FUNC1(component, TWL6040_REG_MICLCTL, 0x18);
	FUNC1(component, TWL6040_REG_MICRCTL, 0x18);

	/*
	 * We need to lower the default gain values, so the ramp code
	 * can work correctly for the first playback.
	 * This reduces the pop noise heard at the first playback.
	 */
	FUNC1(component, TWL6040_REG_HSGAIN, 0xff);
	FUNC1(component, TWL6040_REG_EARCTL, 0x1e);
	FUNC1(component, TWL6040_REG_HFLGAIN, 0x1d);
	FUNC1(component, TWL6040_REG_HFRGAIN, 0x1d);
	FUNC1(component, TWL6040_REG_LINEGAIN, 0);
}