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
struct snd_soc_dai {int /*<<< orphan*/  id; } ;
struct snd_pcm_substream {int dummy; } ;
struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_afe_private {TYPE_1__* soc; } ;
struct TYPE_2__ {int has_one_heart_mode; } ;

/* Variables and functions */
 int FUNC0 (struct mtk_base_afe*,int) ; 
 int FUNC1 (struct mtk_base_afe*,int /*<<< orphan*/ ) ; 
 struct mtk_base_afe* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				  struct snd_soc_dai *dai)
{
	struct mtk_base_afe *afe = FUNC2(dai);
	struct mt2701_afe_private *afe_priv = afe->platform_priv;
	int i2s_num = FUNC1(afe, dai->id);
	bool mode = afe_priv->soc->has_one_heart_mode;

	if (i2s_num < 0)
		return i2s_num;

	return FUNC0(afe, mode ? 1 : i2s_num);
}