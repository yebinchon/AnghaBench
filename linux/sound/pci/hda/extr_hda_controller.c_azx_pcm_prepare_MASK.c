#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  format; int /*<<< orphan*/  channels; int /*<<< orphan*/  rate; } ;
struct hda_spdif_out {unsigned short ctls; } ;
struct hda_pcm_stream {int /*<<< orphan*/  maxbps; int /*<<< orphan*/  nid; } ;
struct azx_pcm {int /*<<< orphan*/  codec; struct azx* chip; } ;
struct TYPE_8__ {unsigned int stream_tag; int /*<<< orphan*/  format_val; } ;
struct azx_dev {TYPE_2__ core; } ;
struct azx {int driver_caps; unsigned int capture_streams; TYPE_1__* card; } ;
struct TYPE_9__ {int prepared; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AZX_DCAPS_CTX_WORKAROUND ; 
 int EBUSY ; 
 int EINVAL ; 
 TYPE_3__* FUNC0 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct azx_dev*) ; 
 struct azx_dev* FUNC5 (struct snd_pcm_substream*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hda_pcm_stream*,unsigned int,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 struct hda_spdif_out* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 struct azx_pcm* FUNC12 (struct snd_pcm_substream*) ; 
 struct hda_pcm_stream* FUNC13 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC14 (struct azx*,struct azx_dev*) ; 

__attribute__((used)) static int FUNC15(struct snd_pcm_substream *substream)
{
	struct azx_pcm *apcm = FUNC12(substream);
	struct azx *chip = apcm->chip;
	struct azx_dev *azx_dev = FUNC5(substream);
	struct hda_pcm_stream *hinfo = FUNC13(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int format_val, stream_tag;
	int err;
	struct hda_spdif_out *spdif =
		FUNC7(apcm->codec, hinfo->nid);
	unsigned short ctls = spdif ? spdif->ctls : 0;

	FUNC14(chip, azx_dev);
	FUNC3(azx_dev);
	if (FUNC2(azx_dev)) {
		err = -EBUSY;
		goto unlock;
	}

	FUNC9(FUNC0(azx_dev));
	format_val = FUNC8(runtime->rate,
						runtime->channels,
						runtime->format,
						hinfo->maxbps,
						ctls);
	if (!format_val) {
		FUNC1(chip->card->dev,
			"invalid format_val, rate=%d, ch=%d, format=%d\n",
			runtime->rate, runtime->channels, runtime->format);
		err = -EINVAL;
		goto unlock;
	}

	err = FUNC10(FUNC0(azx_dev), format_val);
	if (err < 0)
		goto unlock;

	FUNC11(FUNC0(azx_dev));

	stream_tag = azx_dev->core.stream_tag;
	/* CA-IBG chips need the playback stream starting from 1 */
	if ((chip->driver_caps & AZX_DCAPS_CTX_WORKAROUND) &&
	    stream_tag > chip->capture_streams)
		stream_tag -= chip->capture_streams;
	err = FUNC6(apcm->codec, hinfo, stream_tag,
				     azx_dev->core.format_val, substream);

 unlock:
	if (!err)
		FUNC0(azx_dev)->prepared = 1;
	FUNC4(azx_dev);
	return err;
}