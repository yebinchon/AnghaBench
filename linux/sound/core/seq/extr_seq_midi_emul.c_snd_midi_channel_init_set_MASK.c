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
struct snd_midi_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_midi_channel* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_midi_channel*,int) ; 

__attribute__((used)) static struct snd_midi_channel *FUNC2(int n)
{
	struct snd_midi_channel *chan;
	int  i;

	chan = FUNC0(n, sizeof(struct snd_midi_channel), GFP_KERNEL);
	if (chan) {
		for (i = 0; i < n; i++)
			FUNC1(chan+i, i);
	}

	return chan;
}