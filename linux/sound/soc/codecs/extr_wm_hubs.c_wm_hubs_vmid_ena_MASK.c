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
struct wm_hubs_data {scalar_t__ lineout2_se; scalar_t__ lineout1_se; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int WM8993_LINEOUT1N_ENA ; 
 int WM8993_LINEOUT1P_ENA ; 
 int WM8993_LINEOUT2N_ENA ; 
 int WM8993_LINEOUT2P_ENA ; 
 int /*<<< orphan*/  WM8993_POWER_MANAGEMENT_3 ; 
 struct wm_hubs_data* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

void FUNC2(struct snd_soc_component *component)
{
	struct wm_hubs_data *hubs = FUNC0(component);
	int val = 0;

	if (hubs->lineout1_se)
		val |= WM8993_LINEOUT1N_ENA | WM8993_LINEOUT1P_ENA;

	if (hubs->lineout2_se)
		val |= WM8993_LINEOUT2N_ENA | WM8993_LINEOUT2P_ENA;

	/* Enable the line outputs while we power up */
	FUNC1(component, WM8993_POWER_MANAGEMENT_3, val, val);
}