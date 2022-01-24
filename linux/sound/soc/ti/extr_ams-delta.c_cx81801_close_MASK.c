#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct snd_soc_component* disc_data; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {TYPE_1__* card; } ;
struct TYPE_6__ {int /*<<< orphan*/  pins; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* close ) (struct tty_struct*) ;} ;
struct TYPE_4__ {struct snd_soc_dapm_context dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ ams_delta_hook_switch ; 
 int /*<<< orphan*/  cx81801_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 TYPE_2__ v253_ops ; 

__attribute__((used)) static void FUNC8(struct tty_struct *tty)
{
	struct snd_soc_component *component = tty->disc_data;
	struct snd_soc_dapm_context *dapm = &component->card->dapm;

	FUNC1(&cx81801_timer);

	/* Prevent the hook switch from further changing the DAPM pins */
	FUNC0(&ams_delta_hook_switch.pins);

	if (!component)
		return;

	v253_ops.close(tty);

	/* Revert back to default audio input/output constellation */
	FUNC4(dapm);

	FUNC2(dapm, "Mouthpiece");
	FUNC3(dapm, "Earpiece");
	FUNC3(dapm, "Microphone");
	FUNC2(dapm, "Speaker");
	FUNC2(dapm, "AGCIN");

	FUNC6(dapm);

	FUNC5(dapm);
}