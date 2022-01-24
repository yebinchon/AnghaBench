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
struct wm8978_priv {int /*<<< orphan*/  sysclk; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM8978_PLL ; 
 struct wm8978_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * update_reg ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct wm8978_priv *wm8978 = FUNC1(component);
	int i;

	/*
	 * Set default system clock to PLL, it is more precise, this is also the
	 * default hardware setting
	 */
	wm8978->sysclk = WM8978_PLL;

	/*
	 * Set the update bit in all registers, that have one. This way all
	 * writes to those registers will also cause the update bit to be
	 * written.
	 */
	for (i = 0; i < FUNC0(update_reg); i++)
		FUNC2(component, update_reg[i], 0x100, 0x100);

	return 0;
}