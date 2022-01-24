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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cpcap_audio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_DAI_HIFI ; 
 int FUNC0 (struct cpcap_audio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 struct cpcap_audio* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cpcap_audio *cpcap = FUNC3(component);
	int rate = FUNC2(params);

	FUNC1(component->dev, "HiFi setup HW params: rate=%d", rate);
	return FUNC0(cpcap, CPCAP_DAI_HIFI, rate);
}