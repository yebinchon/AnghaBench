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
struct snd_bebob {int /*<<< orphan*/  unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_IN ; 
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int
FUNC2(struct snd_bebob *bebob, unsigned int rate)
{
	int err;

	err = FUNC0(bebob->unit, rate,
				      AVC_GENERAL_PLUG_DIR_OUT, 0);
	if (err < 0)
		goto end;

	err = FUNC0(bebob->unit, rate,
				      AVC_GENERAL_PLUG_DIR_IN, 0);
	if (err < 0)
		goto end;

	/*
	 * Some devices need a bit time for transition.
	 * 300msec is got by some experiments.
	 */
	FUNC1(300);
end:
	return err;
}