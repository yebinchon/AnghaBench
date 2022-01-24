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
struct wm8904_priv {size_t drc_cfg; struct wm8904_pdata* pdata; } ;
struct wm8904_pdata {TYPE_1__* drc_cfgs; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int* regs; } ;

/* Variables and functions */
 scalar_t__ WM8904_DRC_0 ; 
 int WM8904_DRC_DAC_PATH ; 
 int WM8904_DRC_ENA ; 
 int WM8904_DRC_REGS ; 
 struct wm8904_priv* FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_component *component)
{
	struct wm8904_priv *wm8904 = FUNC0(component);
	struct wm8904_pdata *pdata = wm8904->pdata;
	int save, i;

	/* Save any enables; the configuration should clear them. */
	save = FUNC1(component, WM8904_DRC_0);

	for (i = 0; i < WM8904_DRC_REGS; i++)
		FUNC2(component, WM8904_DRC_0 + i, 0xffff,
				    pdata->drc_cfgs[wm8904->drc_cfg].regs[i]);

	/* Reenable the DRC */
	FUNC2(component, WM8904_DRC_0,
			    WM8904_DRC_ENA | WM8904_DRC_DAC_PATH, save);
}