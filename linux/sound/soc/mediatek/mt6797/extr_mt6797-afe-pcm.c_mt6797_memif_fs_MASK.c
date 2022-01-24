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
struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct mtk_base_afe {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_PCM_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int) ; 
 struct mtk_base_afe* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			   unsigned int rate)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component =
		FUNC2(rtd, AFE_PCM_NAME);
	struct mtk_base_afe *afe = FUNC1(component);
	int id = rtd->cpu_dai->id;

	return FUNC0(afe->dev, rate, id);
}