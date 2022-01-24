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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; } ;
struct hdac_hda_priv {int /*<<< orphan*/  codec; } ;
struct TYPE_2__ {int (* open ) (struct hda_pcm_stream*,int /*<<< orphan*/ *,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; } ;
struct hda_pcm {struct hda_pcm_stream* stream; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_pcm*) ; 
 struct hdac_hda_priv* FUNC2 (struct snd_soc_component*) ; 
 struct hda_pcm* FUNC3 (struct hdac_hda_priv*,struct snd_soc_dai*) ; 
 int FUNC4 (struct hda_pcm_stream*,int /*<<< orphan*/ *,struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			     struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct hdac_hda_priv *hda_pvt;
	struct hda_pcm_stream *hda_stream;
	struct hda_pcm *pcm;
	int ret;

	hda_pvt = FUNC2(component);
	pcm = FUNC3(hda_pvt, dai);
	if (!pcm)
		return -EINVAL;

	FUNC0(pcm);

	hda_stream = &pcm->stream[substream->stream];

	ret = hda_stream->ops.open(hda_stream, &hda_pvt->codec, substream);
	if (ret < 0)
		FUNC1(pcm);

	return ret;
}