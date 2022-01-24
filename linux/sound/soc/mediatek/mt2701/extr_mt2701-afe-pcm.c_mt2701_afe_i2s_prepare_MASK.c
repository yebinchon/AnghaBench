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
struct snd_soc_dai {int /*<<< orphan*/  id; } ;
struct snd_pcm_substream {size_t stream; TYPE_2__* runtime; } ;
struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_i2s_path {int* occupied; } ;
struct mt2701_afe_private {struct mt2701_i2s_path* i2s_path; TYPE_1__* soc; } ;
struct TYPE_4__ {int /*<<< orphan*/  rate; } ;
struct TYPE_3__ {int has_one_heart_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 int FUNC0 (struct mtk_base_afe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_base_afe*,struct mt2701_i2s_path*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mtk_base_afe*,int) ; 
 struct mtk_base_afe* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				  struct snd_soc_dai *dai)
{
	struct mtk_base_afe *afe = FUNC3(dai);
	struct mt2701_afe_private *afe_priv = afe->platform_priv;
	int ret, i2s_num = FUNC0(afe, dai->id);
	struct mt2701_i2s_path *i2s_path;
	bool mode = afe_priv->soc->has_one_heart_mode;

	if (i2s_num < 0)
		return i2s_num;

	i2s_path = &afe_priv->i2s_path[i2s_num];

	if (i2s_path->occupied[substream->stream])
		return -EBUSY;

	ret = FUNC2(afe, mode ? 1 : i2s_num);
	if (ret)
		return ret;

	i2s_path->occupied[substream->stream] = 1;

	/* need to enable i2s-out path when enable i2s-in */
	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
		FUNC1(afe, i2s_path, !substream->stream,
				       substream->runtime->rate);

	FUNC1(afe, i2s_path, substream->stream,
			       substream->runtime->rate);

	return 0;
}