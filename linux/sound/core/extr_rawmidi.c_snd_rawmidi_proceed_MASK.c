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
struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {scalar_t__ avail; scalar_t__ buffer_size; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_substream*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct snd_rawmidi_substream *substream)
{
	struct snd_rawmidi_runtime *runtime = substream->runtime;
	unsigned long flags;
	int count = 0;

	FUNC1(&runtime->lock, flags);
	if (runtime->avail < runtime->buffer_size) {
		count = runtime->buffer_size - runtime->avail;
		FUNC0(substream, count);
	}
	FUNC2(&runtime->lock, flags);
	return count;
}