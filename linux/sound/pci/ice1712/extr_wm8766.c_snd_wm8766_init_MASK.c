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
struct snd_wm8766 {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int WM8766_REG_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  snd_wm8766_default_ctl ; 
 int /*<<< orphan*/  FUNC2 (struct snd_wm8766*,int,int const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct snd_wm8766 *wm)
{
	int i;
	static const u16 default_values[] = {
		0x000, 0x100,
		0x120, 0x000,
		0x000, 0x100, 0x000, 0x100, 0x000,
		0x000, 0x080,
	};

	FUNC1(wm->ctl, snd_wm8766_default_ctl, sizeof(wm->ctl));

	FUNC2(wm, WM8766_REG_RESET, 0x00); /* reset */
	FUNC3(10);
	/* load defaults */
	for (i = 0; i < FUNC0(default_values); i++)
		FUNC2(wm, i, default_values[i]);
}