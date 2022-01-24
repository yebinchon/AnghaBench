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

/* Variables and functions */
 unsigned int WM9090_DCS_CAL_COMPLETE_MASK ; 
 int /*<<< orphan*/  WM9090_DC_SERVO_READBACK_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	unsigned int reg;
	int count = 0;

	FUNC0(component->dev, "Waiting for DC servo...\n");
	do {
		count++;
		FUNC2(1);
		reg = FUNC3(component, WM9090_DC_SERVO_READBACK_0);
		FUNC0(component->dev, "DC servo status: %x\n", reg);
	} while ((reg & WM9090_DCS_CAL_COMPLETE_MASK)
		 != WM9090_DCS_CAL_COMPLETE_MASK && count < 1000);

	if ((reg & WM9090_DCS_CAL_COMPLETE_MASK)
	    != WM9090_DCS_CAL_COMPLETE_MASK)
		FUNC1(component->dev, "Timed out waiting for DC Servo\n");
}