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
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct hda_pcm_stream*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; } ;
struct azx_pcm {int /*<<< orphan*/  info; int /*<<< orphan*/  codec; struct azx* chip; } ;
struct azx_dev {int dummy; } ;
struct azx {int /*<<< orphan*/  open_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct azx_dev*) ; 
 struct azx_dev* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct azx_pcm* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_pcm_stream*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 struct hda_pcm_stream* FUNC8 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC9 (struct azx*,struct azx_dev*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct azx_pcm *apcm = FUNC6(substream);
	struct hda_pcm_stream *hinfo = FUNC8(substream);
	struct azx *chip = apcm->chip;
	struct azx_dev *azx_dev = FUNC1(substream);

	FUNC9(chip, azx_dev);
	FUNC2(&chip->open_mutex);
	FUNC0(azx_dev);
	if (hinfo->ops.close)
		hinfo->ops.close(hinfo, apcm->codec, substream);
	FUNC5(apcm->codec);
	FUNC3(&chip->open_mutex);
	FUNC4(apcm->info);
	return 0;
}