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
struct snd_dice {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDTP_IN_STREAM ; 
 int /*<<< orphan*/  AMDTP_OUT_STREAM ; 
 int MAX_STREAMS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_dice*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct snd_dice*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct snd_dice *dice)
{
	int i, err;

	for (i = 0; i < MAX_STREAMS; i++) {
		err = FUNC2(dice, AMDTP_IN_STREAM, i);
		if (err < 0) {
			for (; i >= 0; i--)
				FUNC1(dice, AMDTP_IN_STREAM, i);
			goto end;
		}
	}

	for (i = 0; i < MAX_STREAMS; i++) {
		err = FUNC2(dice, AMDTP_OUT_STREAM, i);
		if (err < 0) {
			for (; i >= 0; i--)
				FUNC1(dice, AMDTP_OUT_STREAM, i);
			for (i = 0; i < MAX_STREAMS; i++)
				FUNC1(dice, AMDTP_IN_STREAM, i);
			goto end;
		}
	}

	err = FUNC0(&dice->domain);
	if (err < 0) {
		for (i = 0; i < MAX_STREAMS; ++i) {
			FUNC1(dice, AMDTP_OUT_STREAM, i);
			FUNC1(dice, AMDTP_IN_STREAM, i);
		}
	}
end:
	return err;
}