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
struct snd_pcxhr {int /*<<< orphan*/  card; TYPE_1__* mgr; } ;
struct TYPE_2__ {scalar_t__ is_hr_stereo; } ;

/* Variables and functions */
 int /*<<< orphan*/  pcxhr_proc_gpio_read ; 
 int /*<<< orphan*/  pcxhr_proc_gpo_write ; 
 int /*<<< orphan*/  pcxhr_proc_info ; 
 int /*<<< orphan*/  pcxhr_proc_ltc ; 
 int /*<<< orphan*/  pcxhr_proc_sync ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_pcxhr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct snd_pcxhr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_pcxhr *chip)
{
	FUNC0(chip->card, "info", chip, pcxhr_proc_info);
	FUNC0(chip->card, "sync", chip, pcxhr_proc_sync);
	/* gpio available on stereo sound cards only */
	if (chip->mgr->is_hr_stereo)
		FUNC1(chip->card, "gpio", chip,
				     pcxhr_proc_gpio_read,
				     pcxhr_proc_gpo_write);
	FUNC0(chip->card, "ltc", chip, pcxhr_proc_ltc);
}