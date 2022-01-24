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
struct snd_pcm_substream {int dummy; } ;
struct atmel_ac97c {int /*<<< orphan*/ * playback_substream; scalar_t__ cur_format; scalar_t__ cur_rate; int /*<<< orphan*/  opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opened_mutex ; 
 struct atmel_ac97c* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct atmel_ac97c *chip = FUNC2(substream);

	FUNC0(&opened_mutex);
	chip->opened--;
	if (!chip->opened) {
		chip->cur_rate = 0;
		chip->cur_format = 0;
	}
	FUNC1(&opened_mutex);

	chip->playback_substream = NULL;

	return 0;
}