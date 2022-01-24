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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct esschan {int /*<<< orphan*/ * apu; int /*<<< orphan*/  mixbuf; int /*<<< orphan*/  list; } ;
struct es1968 {int /*<<< orphan*/  substream_lock; } ;
struct TYPE_2__ {struct esschan* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct esschan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct es1968*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct es1968*,int /*<<< orphan*/ ) ; 
 struct es1968* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct es1968 *chip = FUNC4(substream);
	struct esschan *es;

	if (substream->runtime->private_data == NULL)
		return 0;
	es = substream->runtime->private_data;
	FUNC5(&chip->substream_lock);
	FUNC1(&es->list);
	FUNC6(&chip->substream_lock);
	FUNC3(chip, es->mixbuf);
	FUNC2(chip, es->apu[0]);
	FUNC2(chip, es->apu[2]);
	FUNC0(es);

	return 0;
}