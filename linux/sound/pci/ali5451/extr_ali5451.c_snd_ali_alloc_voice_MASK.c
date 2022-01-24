#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_ali_voice {int use; int pcm; int mode; struct snd_ali* codec; } ;
struct TYPE_4__ {struct snd_ali_voice* voices; } ;
struct snd_ali {int /*<<< orphan*/  voice_alloc; TYPE_2__ synth; TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SNDRV_ALI_VOICE_TYPE_PCM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct snd_ali*,int) ; 
 int FUNC3 (struct snd_ali*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct snd_ali_voice *FUNC6(struct snd_ali * codec,
						 int type, int rec, int channel)
{
	struct snd_ali_voice *pvoice;
	int idx;

	FUNC0(codec->card->dev, "alloc_voice: type=%d rec=%d\n", type, rec);

	FUNC4(&codec->voice_alloc);
	if (type == SNDRV_ALI_VOICE_TYPE_PCM) {
		idx = channel > 0 ? FUNC2(codec, channel) :
			FUNC3(codec,rec);
		if (idx < 0) {
			FUNC1(codec->card->dev, "ali_alloc_voice: err.\n");
			FUNC5(&codec->voice_alloc);
			return NULL;
		}
		pvoice = &(codec->synth.voices[idx]);
		pvoice->codec = codec;
		pvoice->use = 1;
		pvoice->pcm = 1;
		pvoice->mode = rec;
		FUNC5(&codec->voice_alloc);
		return pvoice;
	}
	FUNC5(&codec->voice_alloc);
	return NULL;
}