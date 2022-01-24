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
struct rt298_priv {int sys_clk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT298_ADC_FORMAT ; 
 int /*<<< orphan*/  RT298_DAC_FORMAT ; 
 int /*<<< orphan*/  RT298_I2S_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 struct rt298_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct rt298_priv *rt298 = FUNC5(component);
	unsigned int val = 0;
	int d_len_code;

	switch (FUNC3(params)) {
	/* bit 14 0:48K 1:44.1K */
	case 44100:
	case 48000:
		break;
	default:
		FUNC1(component->dev, "Unsupported sample rate %d\n",
					FUNC3(params));
		return -EINVAL;
	}
	switch (rt298->sys_clk) {
	case 12288000:
	case 24576000:
		if (FUNC3(params) != 48000) {
			FUNC1(component->dev, "Sys_clk is not matched (%d %d)\n",
					FUNC3(params), rt298->sys_clk);
			return -EINVAL;
		}
		break;
	case 11289600:
	case 22579200:
		if (FUNC3(params) != 44100) {
			FUNC1(component->dev, "Sys_clk is not matched (%d %d)\n",
					FUNC3(params), rt298->sys_clk);
			return -EINVAL;
		}
		break;
	}

	if (FUNC2(params) <= 16) {
		/* bit 3:0 Number of Channel */
		val |= (FUNC2(params) - 1);
	} else {
		FUNC1(component->dev, "Unsupported channels %d\n",
					FUNC2(params));
		return -EINVAL;
	}

	d_len_code = 0;
	switch (FUNC4(params)) {
	/* bit 6:4 Bits per Sample */
	case 16:
		d_len_code = 0;
		val |= (0x1 << 4);
		break;
	case 32:
		d_len_code = 2;
		val |= (0x4 << 4);
		break;
	case 20:
		d_len_code = 1;
		val |= (0x2 << 4);
		break;
	case 24:
		d_len_code = 2;
		val |= (0x3 << 4);
		break;
	case 8:
		d_len_code = 3;
		break;
	default:
		return -EINVAL;
	}

	FUNC6(component,
		RT298_I2S_CTRL1, 0x0018, d_len_code << 3);
	FUNC0(component->dev, "format val = 0x%x\n", val);

	FUNC6(component, RT298_DAC_FORMAT, 0x407f, val);
	FUNC6(component, RT298_ADC_FORMAT, 0x407f, val);

	return 0;
}