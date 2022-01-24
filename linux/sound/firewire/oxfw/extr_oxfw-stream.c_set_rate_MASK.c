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
struct snd_oxfw {int /*<<< orphan*/  unit; scalar_t__ has_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_IN ; 
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_oxfw *oxfw, unsigned int rate)
{
	int err;

	err = FUNC0(oxfw->unit, rate,
				      AVC_GENERAL_PLUG_DIR_IN, 0);
	if (err < 0)
		goto end;

	if (oxfw->has_output)
		err = FUNC0(oxfw->unit, rate,
					      AVC_GENERAL_PLUG_DIR_OUT, 0);
end:
	return err;
}