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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct lola_stream {unsigned int bufsize; int /*<<< orphan*/  dsd; } ;
struct lola {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  LPIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lola_stream* FUNC2 (struct snd_pcm_substream*) ; 
 struct lola* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct lola *chip = FUNC3(substream);
	struct lola_stream *str = FUNC2(substream);
	unsigned int pos = FUNC1(chip, str->dsd, LPIB);

	if (pos >= str->bufsize)
		pos = 0;
	return FUNC0(substream->runtime, pos);
}