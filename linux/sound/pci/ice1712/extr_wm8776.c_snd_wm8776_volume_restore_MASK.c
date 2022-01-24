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
typedef  int u16 ;
struct snd_wm8776 {int* regs; } ;

/* Variables and functions */
 size_t WM8776_REG_DACRVOL ; 
 int WM8776_VOL_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_wm8776*,size_t,int) ; 

void FUNC1(struct snd_wm8776 *wm)
{
	u16 val = wm->regs[WM8776_REG_DACRVOL];
	/* restore volume after MCLK stopped */
	FUNC0(wm, WM8776_REG_DACRVOL, val | WM8776_VOL_UPDATE);
}