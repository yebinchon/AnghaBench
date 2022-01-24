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
struct lola_stream {scalar_t__ opened; struct snd_pcm_substream* substream; } ;
struct lola {scalar_t__ ref_count_rate; int /*<<< orphan*/  open_mutex; scalar_t__ sample_rate; } ;

/* Variables and functions */
 struct lola_stream* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct lola* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct lola *chip = FUNC3(substream);
	struct lola_stream *str = FUNC0(substream);

	FUNC1(&chip->open_mutex);
	if (str->substream == substream) {
		str->substream = NULL;
		str->opened = 0;
	}
	if (--chip->ref_count_rate == 0) {
		/* release sample rate */
		chip->sample_rate = 0;
	}
	FUNC2(&chip->open_mutex);
	return 0;
}