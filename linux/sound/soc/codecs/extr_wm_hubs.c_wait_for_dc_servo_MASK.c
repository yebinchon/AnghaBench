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
struct wm_hubs_data {int /*<<< orphan*/  dcs_done; scalar_t__ dcs_done_irq; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int WM8993_DCS_ENA_CHAN_0 ; 
 unsigned int WM8993_DCS_ENA_CHAN_1 ; 
 int /*<<< orphan*/  WM8993_DC_SERVO_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct wm_hubs_data* FUNC4 (struct snd_soc_component*) ; 
 unsigned int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct snd_soc_component *component, unsigned int op)
{
	struct wm_hubs_data *hubs = FUNC4(component);
	unsigned int reg;
	int count = 0;
	int timeout;
	unsigned int val;

	val = op | WM8993_DCS_ENA_CHAN_0 | WM8993_DCS_ENA_CHAN_1;

	/* Trigger the command */
	FUNC6(component, WM8993_DC_SERVO_0, val);

	FUNC0(component->dev, "Waiting for DC servo...\n");

	if (hubs->dcs_done_irq)
		timeout = 4;
	else
		timeout = 400;

	do {
		count++;

		if (hubs->dcs_done_irq)
			FUNC7(&hubs->dcs_done,
						    FUNC2(250));
		else
			FUNC3(1);

		reg = FUNC5(component, WM8993_DC_SERVO_0);
		FUNC0(component->dev, "DC servo: %x\n", reg);
	} while (reg & op && count < timeout);

	if (reg & op)
		FUNC1(component->dev, "Timed out waiting for DC Servo %x\n",
			op);
}