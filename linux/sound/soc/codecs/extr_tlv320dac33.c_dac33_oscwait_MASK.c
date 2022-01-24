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
typedef  int u8 ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC33_INT_OSC_STATUS ; 
 int DAC33_OSCSTATUS_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_component *component)
{
	int timeout = 60;
	u8 reg;

	do {
		FUNC2(1000, 2000);
		FUNC0(component, DAC33_INT_OSC_STATUS, &reg);
	} while (((reg & 0x03) != DAC33_OSCSTATUS_NORMAL) && timeout--);
	if ((reg & 0x03) != DAC33_OSCSTATUS_NORMAL)
		FUNC1(component->dev,
			"internal oscillator calibration failed\n");
}