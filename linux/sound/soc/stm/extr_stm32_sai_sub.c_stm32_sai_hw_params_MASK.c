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
struct stm32_sai_sub_data {scalar_t__ master; int /*<<< orphan*/  data_size; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct stm32_sai_sub_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 struct stm32_sai_sub_data* FUNC3 (struct snd_soc_dai*) ; 
 int FUNC4 (struct snd_soc_dai*,struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_soc_dai*,struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_sai_sub_data*,TYPE_1__*) ; 
 int FUNC8 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
			       struct snd_pcm_hw_params *params,
			       struct snd_soc_dai *cpu_dai)
{
	struct stm32_sai_sub_data *sai = FUNC3(cpu_dai);
	int ret;

	sai->data_size = FUNC2(params);

	if (FUNC0(sai)) {
		/* Rate not already set in runtime structure */
		substream->runtime->rate = FUNC1(params);
		FUNC7(sai, substream->runtime);
	} else {
		ret = FUNC8(cpu_dai);
		if (ret < 0)
			return ret;
		FUNC6(cpu_dai);
	}

	ret = FUNC5(cpu_dai, substream, params);
	if (ret)
		return ret;

	if (sai->master)
		ret = FUNC4(cpu_dai, params);

	return ret;
}