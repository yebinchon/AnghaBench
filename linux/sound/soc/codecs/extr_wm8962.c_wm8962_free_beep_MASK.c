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
struct wm8962_priv {int /*<<< orphan*/ * beep; int /*<<< orphan*/  beep_work; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8962_BEEP_ENA ; 
 int /*<<< orphan*/  WM8962_BEEP_GENERATOR_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_beep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wm8962_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct wm8962_priv *wm8962 = FUNC2(component);

	FUNC1(component->dev, &dev_attr_beep);
	FUNC0(&wm8962->beep_work);
	wm8962->beep = NULL;

	FUNC3(component, WM8962_BEEP_GENERATOR_1, WM8962_BEEP_ENA,0);
}