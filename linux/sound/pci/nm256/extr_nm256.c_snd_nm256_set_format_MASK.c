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
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  rate; int /*<<< orphan*/  format; } ;
struct nm256_stream {scalar_t__ shift; } ;
struct nm256 {int dummy; } ;

/* Variables and functions */
 scalar_t__ NM_PLAYBACK_REG_OFFSET ; 
 unsigned char NM_RATE_BITS_16 ; 
 int NM_RATE_MASK ; 
 scalar_t__ NM_RATE_REG_OFFSET ; 
 unsigned char NM_RATE_STEREO ; 
 scalar_t__ NM_RECORD_REG_OFFSET ; 
#define  SNDRV_PCM_STREAM_CAPTURE 129 
#define  SNDRV_PCM_STREAM_PLAYBACK 128 
 int /*<<< orphan*/ * samplerates ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nm256*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nm256*,scalar_t__,unsigned char) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nm256 *chip, struct nm256_stream *s,
		     struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	int rate_index = FUNC0(runtime->rate);
	unsigned char ratebits = (rate_index << 4) & NM_RATE_MASK;

	s->shift = 0;
	if (FUNC3(runtime->format) == 16) {
		ratebits |= NM_RATE_BITS_16;
		s->shift++;
	}
	if (runtime->channels > 1) {
		ratebits |= NM_RATE_STEREO;
		s->shift++;
	}

	runtime->rate = samplerates[rate_index];

	switch (substream->stream) {
	case SNDRV_PCM_STREAM_PLAYBACK:
		FUNC1(chip, 0, rate_index); /* 0 = playback */
		FUNC2(chip,
				 NM_PLAYBACK_REG_OFFSET + NM_RATE_REG_OFFSET,
				 ratebits);
		break;
	case SNDRV_PCM_STREAM_CAPTURE:
		FUNC1(chip, 1, rate_index); /* 1 = record */
		FUNC2(chip,
				 NM_RECORD_REG_OFFSET + NM_RATE_REG_OFFSET,
				 ratebits);
		break;
	}
}