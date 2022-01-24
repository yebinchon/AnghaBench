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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; } ;
struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_afe_private {int* mrg_enable; } ;

/* Variables and functions */
 int FUNC0 (struct mtk_base_afe*) ; 
 struct mtk_base_afe* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct mtk_base_afe *afe = FUNC1(dai);
	struct mt2701_afe_private *afe_priv = afe->platform_priv;
	int ret;

	ret = FUNC0(afe);
	if (ret)
		return ret;

	afe_priv->mrg_enable[substream->stream] = 1;

	return 0;
}