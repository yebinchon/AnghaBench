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
struct snd_oxfw {int /*<<< orphan*/  mutex; int /*<<< orphan*/  substreams_count; int /*<<< orphan*/  tx_stream; } ;
struct TYPE_2__ {struct snd_oxfw* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_oxfw*) ; 
 int FUNC3 (struct snd_oxfw*) ; 
 int FUNC4 (struct snd_oxfw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_oxfw*) ; 

__attribute__((used)) static int FUNC6(struct snd_rawmidi_substream *substream)
{
	struct snd_oxfw *oxfw = substream->rmidi->private_data;
	int err;

	err = FUNC3(oxfw);
	if (err < 0)
		return err;

	FUNC0(&oxfw->mutex);

	err = FUNC4(oxfw, &oxfw->tx_stream, 0, 0);
	if (err >= 0) {
		++oxfw->substreams_count;
		err = FUNC5(oxfw);
		if (err < 0)
			--oxfw->substreams_count;
	}

	FUNC1(&oxfw->mutex);

	if (err < 0)
		FUNC2(oxfw);

	return err;
}