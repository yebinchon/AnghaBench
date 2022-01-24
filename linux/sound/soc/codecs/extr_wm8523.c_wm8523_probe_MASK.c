#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  count; int /*<<< orphan*/ * list; } ;
struct wm8523_priv {int /*<<< orphan*/ * rate_constraint_list; TYPE_1__ rate_constraint; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM8523_DACR_VU ; 
 int /*<<< orphan*/  WM8523_DAC_CTRL3 ; 
 int /*<<< orphan*/  WM8523_DAC_GAINR ; 
 int /*<<< orphan*/  WM8523_ZC ; 
 struct wm8523_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct wm8523_priv *wm8523 = FUNC1(component);

	wm8523->rate_constraint.list = &wm8523->rate_constraint_list[0];
	wm8523->rate_constraint.count =
		FUNC0(wm8523->rate_constraint_list);

	/* Change some default settings - latch VU and enable ZC */
	FUNC2(component, WM8523_DAC_GAINR,
			    WM8523_DACR_VU, WM8523_DACR_VU);
	FUNC2(component, WM8523_DAC_CTRL3, WM8523_ZC, WM8523_ZC);

	return 0;
}