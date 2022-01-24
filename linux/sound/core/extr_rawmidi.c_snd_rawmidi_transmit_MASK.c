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
struct snd_rawmidi_substream {int /*<<< orphan*/  opened; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBADFD ; 
 int FUNC0 (struct snd_rawmidi_substream*,int) ; 
 int FUNC1 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct snd_rawmidi_substream *substream,
			 unsigned char *buffer, int count)
{
	struct snd_rawmidi_runtime *runtime = substream->runtime;
	int result;
	unsigned long flags;

	FUNC2(&runtime->lock, flags);
	if (!substream->opened)
		result = -EBADFD;
	else {
		count = FUNC1(substream, buffer, count);
		if (count <= 0)
			result = count;
		else
			result = FUNC0(substream, count);
	}
	FUNC3(&runtime->lock, flags);
	return result;
}