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
struct soc_tplg {TYPE_2__* comp; int /*<<< orphan*/  ops; int /*<<< orphan*/  index; } ;
struct snd_soc_tplg_stream_caps {int dummy; } ;
struct snd_soc_tplg_pcm {scalar_t__ compress; struct snd_soc_tplg_stream_caps* caps; scalar_t__ capture; scalar_t__ playback; int /*<<< orphan*/  dai_id; int /*<<< orphan*/  dai_name; } ;
struct snd_soc_pcm_stream {struct snd_soc_dai_driver* stream_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; int /*<<< orphan*/  type; int /*<<< orphan*/  ops; int /*<<< orphan*/  index; } ;
struct snd_soc_dai_driver {TYPE_1__ dobj; struct snd_soc_dai_driver* name; struct snd_soc_pcm_stream capture; struct snd_soc_pcm_stream playback; int /*<<< orphan*/  compress_new; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  dobj_list; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SND_SOC_DOBJ_PCM ; 
 size_t SND_SOC_TPLG_STREAM_CAPTURE ; 
 size_t SND_SOC_TPLG_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai_driver*) ; 
 struct snd_soc_dai_driver* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dai_driver* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_pcm_stream*,struct snd_soc_tplg_stream_caps*) ; 
 int /*<<< orphan*/  snd_soc_new_compress ; 
 int FUNC7 (TYPE_2__*,struct snd_soc_dai_driver*) ; 
 int FUNC8 (struct soc_tplg*,struct snd_soc_dai_driver*,struct snd_soc_tplg_pcm*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct soc_tplg *tplg,
	struct snd_soc_tplg_pcm *pcm)
{
	struct snd_soc_dai_driver *dai_drv;
	struct snd_soc_pcm_stream *stream;
	struct snd_soc_tplg_stream_caps *caps;
	int ret;

	dai_drv = FUNC3(sizeof(struct snd_soc_dai_driver), GFP_KERNEL);
	if (dai_drv == NULL)
		return -ENOMEM;

	if (FUNC9(pcm->dai_name))
		dai_drv->name = FUNC2(pcm->dai_name, GFP_KERNEL);
	dai_drv->id = FUNC4(pcm->dai_id);

	if (pcm->playback) {
		stream = &dai_drv->playback;
		caps = &pcm->caps[SND_SOC_TPLG_STREAM_PLAYBACK];
		FUNC6(stream, caps);
	}

	if (pcm->capture) {
		stream = &dai_drv->capture;
		caps = &pcm->caps[SND_SOC_TPLG_STREAM_CAPTURE];
		FUNC6(stream, caps);
	}

	if (pcm->compress)
		dai_drv->compress_new = snd_soc_new_compress;

	/* pass control to component driver for optional further init */
	ret = FUNC8(tplg, dai_drv, pcm, NULL);
	if (ret < 0) {
		FUNC0(tplg->comp->dev, "ASoC: DAI loading failed\n");
		FUNC1(dai_drv->playback.stream_name);
		FUNC1(dai_drv->capture.stream_name);
		FUNC1(dai_drv->name);
		FUNC1(dai_drv);
		return ret;
	}

	dai_drv->dobj.index = tplg->index;
	dai_drv->dobj.ops = tplg->ops;
	dai_drv->dobj.type = SND_SOC_DOBJ_PCM;
	FUNC5(&dai_drv->dobj.list, &tplg->comp->dobj_list);

	/* register the DAI to the component */
	return FUNC7(tplg->comp, dai_drv);
}