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
struct snd_ac97 {int dummy; } ;
struct pinctrl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pstate_run; int /*<<< orphan*/  gpio_sync; int /*<<< orphan*/  pstate_warm_reset; struct pinctrl* pctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pinctrl*,int /*<<< orphan*/ ) ; 
 TYPE_1__ snd_ac97_rst_cfg ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct snd_ac97 *ac97)
{
	struct pinctrl *pctl = snd_ac97_rst_cfg.pctl;

	FUNC2(pctl, snd_ac97_rst_cfg.pstate_warm_reset);

	FUNC0(snd_ac97_rst_cfg.gpio_sync, 1);

	FUNC3(10);

	FUNC0(snd_ac97_rst_cfg.gpio_sync, 0);

	FUNC2(pctl, snd_ac97_rst_cfg.pstate_run);
	FUNC1(2);
}