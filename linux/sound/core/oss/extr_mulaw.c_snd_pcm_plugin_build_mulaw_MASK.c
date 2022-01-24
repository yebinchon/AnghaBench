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
struct snd_pcm_plugin_format {scalar_t__ rate; scalar_t__ channels; scalar_t__ format; } ;
struct snd_pcm_plugin {int /*<<< orphan*/  transfer; scalar_t__ extra_data; } ;
struct mulaw_priv {int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  mulaw_f ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ SNDRV_PCM_FORMAT_MU_LAW ; 
 int /*<<< orphan*/  FUNC0 (struct mulaw_priv*,scalar_t__) ; 
 int /*<<< orphan*/  mulaw_decode ; 
 int /*<<< orphan*/  mulaw_encode ; 
 int /*<<< orphan*/  mulaw_transfer ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (struct snd_pcm_substream*,char*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,int,struct snd_pcm_plugin**) ; 

int FUNC5(struct snd_pcm_substream *plug,
			       struct snd_pcm_plugin_format *src_format,
			       struct snd_pcm_plugin_format *dst_format,
			       struct snd_pcm_plugin **r_plugin)
{
	int err;
	struct mulaw_priv *data;
	struct snd_pcm_plugin *plugin;
	struct snd_pcm_plugin_format *format;
	mulaw_f func;

	if (FUNC2(!r_plugin))
		return -ENXIO;
	*r_plugin = NULL;

	if (FUNC2(src_format->rate != dst_format->rate))
		return -ENXIO;
	if (FUNC2(src_format->channels != dst_format->channels))
		return -ENXIO;

	if (dst_format->format == SNDRV_PCM_FORMAT_MU_LAW) {
		format = src_format;
		func = mulaw_encode;
	}
	else if (src_format->format == SNDRV_PCM_FORMAT_MU_LAW) {
		format = dst_format;
		func = mulaw_decode;
	}
	else {
		FUNC1();
		return -EINVAL;
	}
	if (FUNC2(!FUNC3(format->format)))
		return -ENXIO;

	err = FUNC4(plug, "Mu-Law<->linear conversion",
				   src_format, dst_format,
				   sizeof(struct mulaw_priv), &plugin);
	if (err < 0)
		return err;
	data = (struct mulaw_priv *)plugin->extra_data;
	data->func = func;
	FUNC0(data, format->format);
	plugin->transfer = mulaw_transfer;
	*r_plugin = plugin;
	return 0;
}