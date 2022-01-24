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
struct snd_pcm_substream {int dummy; } ;
struct echoaudio {int can_set_rate; scalar_t__ rate_set; TYPE_1__* card; int /*<<< orphan*/  opencount; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,scalar_t__) ; 
 struct echoaudio* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct echoaudio *chip = FUNC3(substream);
	int oc;

	/* Nothing to do here. Audio is already off and pipe will be
	 * freed by its callback
	 */

	FUNC0(&chip->opencount);
	oc = FUNC1(&chip->opencount);
	FUNC2(chip->card->dev, "pcm_close  oc=%d  cs=%d  rs=%d\n", oc,
		chip->can_set_rate, chip->rate_set);
	if (oc < 2)
		chip->can_set_rate = 1;
	if (oc == 0)
		chip->rate_set = 0;
	FUNC2(chip->card->dev, "pcm_close2 oc=%d  cs=%d  rs=%d\n", oc,
		chip->can_set_rate, chip->rate_set);

	return 0;
}