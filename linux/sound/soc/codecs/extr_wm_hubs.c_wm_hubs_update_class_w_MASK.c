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
struct wm_hubs_data {int /*<<< orphan*/  (* check_class_w_digital ) (struct snd_soc_component*) ;} ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8993_CLASS_W_0 ; 
 int WM8993_CP_DYN_FREQ ; 
 int WM8993_CP_DYN_V ; 
 int /*<<< orphan*/  WM8993_LEFT_OUTPUT_VOLUME ; 
 int /*<<< orphan*/  WM8993_RIGHT_OUTPUT_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 struct wm_hubs_data* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*) ; 

void FUNC7(struct snd_soc_component *component)
{
	struct wm_hubs_data *hubs = FUNC1(component);
	int enable = WM8993_CP_DYN_V | WM8993_CP_DYN_FREQ;

	if (!FUNC6(component))
		enable = false;

	if (hubs->check_class_w_digital && !hubs->check_class_w_digital(component))
		enable = false;

	FUNC0(component->dev, "Class W %s\n", enable ? "enabled" : "disabled");

	FUNC3(component, WM8993_CLASS_W_0,
			    WM8993_CP_DYN_V | WM8993_CP_DYN_FREQ, enable);

	FUNC4(component, WM8993_LEFT_OUTPUT_VOLUME,
		      FUNC2(component, WM8993_LEFT_OUTPUT_VOLUME));
	FUNC4(component, WM8993_RIGHT_OUTPUT_VOLUME,
		      FUNC2(component, WM8993_RIGHT_OUTPUT_VOLUME));
}