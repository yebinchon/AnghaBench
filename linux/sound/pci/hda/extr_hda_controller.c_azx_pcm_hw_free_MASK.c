#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct azx_pcm {int /*<<< orphan*/  codec; } ;
struct azx_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ prepared; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct azx_dev*) ; 
 struct azx_dev* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hda_pcm_stream*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct snd_pcm_substream*) ; 
 struct azx_pcm* FUNC8 (struct snd_pcm_substream*) ; 
 struct hda_pcm_stream* FUNC9 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct azx_pcm *apcm = FUNC8(substream);
	struct azx_dev *azx_dev = FUNC4(substream);
	struct hda_pcm_stream *hinfo = FUNC9(substream);
	int err;

	/* reset BDL address */
	FUNC2(azx_dev);
	if (!FUNC1(azx_dev))
		FUNC6(FUNC0(azx_dev));

	FUNC5(apcm->codec, hinfo, substream);

	err = FUNC7(substream);
	FUNC0(azx_dev)->prepared = 0;
	FUNC3(azx_dev);
	return err;
}