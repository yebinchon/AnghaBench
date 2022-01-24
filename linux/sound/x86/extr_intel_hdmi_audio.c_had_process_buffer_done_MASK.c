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
struct snd_intelhad {int /*<<< orphan*/  connected; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_pcm_substream*,struct snd_intelhad*) ; 
 struct snd_pcm_substream* FUNC1 (struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static void FUNC5(struct snd_intelhad *intelhaddata)
{
	struct snd_pcm_substream *substream;

	substream = FUNC1(intelhaddata);
	if (!substream)
		return; /* no stream? - bail out */

	if (!intelhaddata->connected) {
		FUNC4(substream);
		goto out; /* disconnected? - bail out */
	}

	/* process or stop the stream */
	if (FUNC0(substream, intelhaddata) < 0)
		FUNC4(substream);
	else
		FUNC3(substream);

 out:
	FUNC2(intelhaddata);
}