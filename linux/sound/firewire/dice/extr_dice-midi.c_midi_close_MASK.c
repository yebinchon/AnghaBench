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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_dice {int /*<<< orphan*/  mutex; int /*<<< orphan*/  substreams_counter; } ;
struct TYPE_2__ {struct snd_dice* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_dice*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_dice*) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	struct snd_dice *dice = substream->rmidi->private_data;

	FUNC0(&dice->mutex);

	--dice->substreams_counter;
	FUNC3(dice);

	FUNC1(&dice->mutex);

	FUNC2(dice);
	return 0;
}