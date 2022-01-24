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
struct snd_ff {int /*<<< orphan*/ * rx_midi_work; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_ff*,int) ; 
 int FUNC2 (struct snd_ff*) ; 
 int /*<<< orphan*/  transmit_midi0_msg ; 
 int /*<<< orphan*/  transmit_midi1_msg ; 

int FUNC3(struct snd_ff *ff)
{
	int i, err;

	/*
	 * Allocate in Memory Space of IEC 13213, but lower 4 byte in LSB should
	 * be zero due to device specification.
	 */
	for (i = 0; i < 0xffff; i++) {
		err = FUNC1(ff, i);
		if (err != -EBUSY && err != -EAGAIN)
			break;
	}
	if (err < 0)
		return err;

	err = FUNC2(ff);
	if (err < 0)
		return err;

	FUNC0(&ff->rx_midi_work[0], transmit_midi0_msg);
	FUNC0(&ff->rx_midi_work[1], transmit_midi1_msg);

	return 0;
}