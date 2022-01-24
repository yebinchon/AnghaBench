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
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; } ;
struct hdac_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct hdac_device core; } ;
struct hdac_hda_priv {TYPE_2__ codec; TYPE_1__* pcm; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_pcm {struct hda_pcm_stream* stream; } ;
struct TYPE_3__ {unsigned int* stream_tag; unsigned int* format_val; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_2__*,struct hda_pcm_stream*,unsigned int,unsigned int,struct snd_pcm_substream*) ; 
 struct hdac_hda_priv* FUNC2 (struct snd_soc_component*) ; 
 struct hda_pcm* FUNC3 (struct hdac_hda_priv*,struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct hda_pcm_stream *hda_stream;
	struct hdac_hda_priv *hda_pvt;
	struct hdac_device *hdev;
	unsigned int format_val;
	struct hda_pcm *pcm;
	unsigned int stream;
	int ret = 0;

	hda_pvt = FUNC2(component);
	hdev = &hda_pvt->codec.core;
	pcm = FUNC3(hda_pvt, dai);
	if (!pcm)
		return -EINVAL;

	hda_stream = &pcm->stream[substream->stream];

	stream = hda_pvt->pcm[dai->id].stream_tag[substream->stream];
	format_val = hda_pvt->pcm[dai->id].format_val[substream->stream];

	ret = FUNC1(&hda_pvt->codec, hda_stream,
				    stream, format_val, substream);
	if (ret < 0)
		FUNC0(&hdev->dev, "codec prepare failed %d\n", ret);

	return ret;
}