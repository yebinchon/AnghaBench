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
typedef  int /*<<< orphan*/  u16 ;
struct snd_wm8776 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8776_REG_PWRDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_wm8776*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct snd_wm8776 *wm, u16 power)
{
	FUNC0(wm, WM8776_REG_PWRDOWN, power);
}