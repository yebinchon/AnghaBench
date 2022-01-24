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
struct wm8962_priv {int /*<<< orphan*/  dsp2_ena; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8962_DSP2_EXECCONTROL ; 
 int /*<<< orphan*/  WM8962_DSP2_RUNR ; 
 struct wm8962_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct wm8962_priv *wm8962 = FUNC0(component);

	FUNC3(component);

	FUNC1(component, WM8962_DSP2_EXECCONTROL, WM8962_DSP2_RUNR);

	FUNC2(component, wm8962->dsp2_ena);

	return 0;
}