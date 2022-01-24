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
struct special_params {scalar_t__ ctl_id_sync; } ;
struct snd_bebob {int /*<<< orphan*/  card; int /*<<< orphan*/  unit; struct special_params* maudio_special_quirk; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_IN ; 
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_OUT ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct snd_bebob *bebob, unsigned int rate)
{
	struct special_params *params = bebob->maudio_special_quirk;
	int err;

	err = FUNC0(bebob->unit, rate,
				      AVC_GENERAL_PLUG_DIR_OUT, 0);
	if (err < 0)
		goto end;

	/*
	 * Just after changing sampling rate for output, a followed command
	 * for input is easy to fail. This is a workaround fot this issue.
	 */
	FUNC1(100);

	err = FUNC0(bebob->unit, rate,
				      AVC_GENERAL_PLUG_DIR_IN, 0);
	if (err < 0)
		goto end;

	if (params->ctl_id_sync)
		FUNC2(bebob->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       params->ctl_id_sync);
end:
	return err;
}