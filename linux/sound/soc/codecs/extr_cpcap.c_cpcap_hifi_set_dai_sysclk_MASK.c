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
struct snd_soc_component {struct device* dev; } ;
struct device {int dummy; } ;
struct cpcap_audio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_DAI_HIFI ; 
 int FUNC0 (struct cpcap_audio*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,unsigned int) ; 
 struct cpcap_audio* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *codec_dai, int clk_id,
				     unsigned int freq, int dir)
{
	struct snd_soc_component *component = codec_dai->component;
	struct cpcap_audio *cpcap = FUNC2(component);
	struct device *dev = component->dev;

	FUNC1(dev, "HiFi setup sysclk: clk_id=%u, freq=%u", clk_id, freq);
	return FUNC0(cpcap, CPCAP_DAI_HIFI, clk_id, freq);
}