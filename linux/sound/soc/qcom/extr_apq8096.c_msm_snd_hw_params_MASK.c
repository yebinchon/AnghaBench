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
typedef  scalar_t__ u32 ;
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int SLIM_MAX_RX_PORTS ; 
 int SLIM_MAX_TX_PORTS ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct snd_soc_dai*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int FUNC2 (struct snd_soc_dai*,scalar_t__,scalar_t__*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	u32 rx_ch[SLIM_MAX_RX_PORTS], tx_ch[SLIM_MAX_TX_PORTS];
	u32 rx_ch_cnt = 0, tx_ch_cnt = 0;
	int ret = 0;

	ret = FUNC1(codec_dai,
				&tx_ch_cnt, tx_ch, &rx_ch_cnt, rx_ch);
	if (ret != 0 && ret != -ENOTSUPP) {
		FUNC0("failed to get codec chan map, err:%d\n", ret);
		goto end;
	} else if (ret == -ENOTSUPP) {
		return 0;
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		ret = FUNC2(cpu_dai, 0, NULL,
						  rx_ch_cnt, rx_ch);
	else
		ret = FUNC2(cpu_dai, tx_ch_cnt, tx_ch,
						  0, NULL);
	if (ret != 0 && ret != -ENOTSUPP)
		FUNC0("Failed to set cpu chan map, err:%d\n", ret);
	else if (ret == -ENOTSUPP)
		ret = 0;
end:
	return ret;
}