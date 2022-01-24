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
 int EAGAIN ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_bebob *bebob, unsigned int *rate)
{
	int err, trials;

	trials = 0;
	do {
		err = FUNC0(bebob->unit, rate,
					      AVC_GENERAL_PLUG_DIR_IN, 0);
	} while (err == -EAGAIN && ++trials < 3);

	return err;
}