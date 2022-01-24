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
struct snd_rawmidi_substream {int /*<<< orphan*/  number; TYPE_1__* rmidi; } ;
struct portman {int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {struct portman* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct portman*,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC1 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct snd_rawmidi_substream *substream,
					    int up)
{
	struct portman *pm = substream->rmidi->private_data;
	unsigned long flags;
	unsigned char byte;

	FUNC2(&pm->reg_lock, flags);
	if (up) {
		while ((FUNC1(substream, &byte, 1) == 1))
			FUNC0(pm, substream->number, byte);
	}
	FUNC3(&pm->reg_lock, flags);
}