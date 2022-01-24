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
struct nm256 {int /*<<< orphan*/ * streams; } ;

/* Variables and functions */
 int EBUSY ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 scalar_t__ FUNC0 (struct nm256*) ; 
 int /*<<< orphan*/  snd_nm256_capture ; 
 int /*<<< orphan*/  FUNC1 (struct nm256*,int /*<<< orphan*/ *,struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 struct nm256* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int
FUNC3(struct snd_pcm_substream *substream)
{
	struct nm256 *chip = FUNC2(substream);

	if (FUNC0(chip) < 0)
		return -EBUSY;
	FUNC1(chip, &chip->streams[SNDRV_PCM_STREAM_CAPTURE],
			       substream, &snd_nm256_capture);
	return 0;
}