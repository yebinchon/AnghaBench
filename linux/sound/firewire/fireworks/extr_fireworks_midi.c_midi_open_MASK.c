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
struct snd_efw {int /*<<< orphan*/  mutex; int /*<<< orphan*/  substreams_counter; } ;
struct TYPE_2__ {struct snd_efw* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_efw*) ; 
 int FUNC3 (struct snd_efw*) ; 
 int FUNC4 (struct snd_efw*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_efw*) ; 

__attribute__((used)) static int FUNC6(struct snd_rawmidi_substream *substream)
{
	struct snd_efw *efw = substream->rmidi->private_data;
	int err;

	err = FUNC3(efw);
	if (err < 0)
		goto end;

	FUNC0(&efw->mutex);
	err = FUNC4(efw, 0);
	if (err >= 0) {
		++efw->substreams_counter;
		err = FUNC5(efw);
		if (err < 0)
			--efw->substreams_counter;
	}
	FUNC1(&efw->mutex);
	if (err < 0)
		FUNC2(efw);
end:
	return err;
}