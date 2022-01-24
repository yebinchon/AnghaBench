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
struct snd_motu {int /*<<< orphan*/  mutex; int /*<<< orphan*/  substreams_counter; } ;
struct TYPE_2__ {struct snd_motu* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_motu*) ; 
 int FUNC3 (struct snd_motu*) ; 
 int FUNC4 (struct snd_motu*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_motu*) ; 

__attribute__((used)) static int FUNC6(struct snd_rawmidi_substream *substream)
{
	struct snd_motu *motu = substream->rmidi->private_data;
	int err;

	err = FUNC3(motu);
	if (err < 0)
		return err;

	FUNC0(&motu->mutex);

	err = FUNC4(motu, 0);
	if (err >= 0) {
		++motu->substreams_counter;
		err = FUNC5(motu);
		if (err < 0)
			--motu->substreams_counter;
	}

	FUNC1(&motu->mutex);

	if (err < 0)
		FUNC2(motu);

	return err;
}