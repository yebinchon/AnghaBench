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
struct stm32_i2s_data {int dummy; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct stm32_i2s_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct stm32_i2s_data* FUNC2 (struct snd_soc_dai*) ; 
 int FUNC3 (struct snd_soc_dai*,struct snd_pcm_hw_params*,struct snd_pcm_substream*) ; 
 int FUNC4 (struct snd_soc_dai*,struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			       struct snd_pcm_hw_params *params,
			       struct snd_soc_dai *cpu_dai)
{
	struct stm32_i2s_data *i2s = FUNC2(cpu_dai);
	int ret;

	ret = FUNC3(cpu_dai, params, substream);
	if (ret < 0) {
		FUNC1(cpu_dai->dev, "Configuration returned error %d\n", ret);
		return ret;
	}

	if (FUNC0(i2s))
		ret = FUNC4(cpu_dai, params);

	return ret;
}