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
struct msm8916_wcd_digital_priv {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPASS_CDC_CLK_MCLK_CTL ; 
 int /*<<< orphan*/  LPASS_CDC_CLK_PDM_CTL ; 
 int /*<<< orphan*/  LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_FB ; 
 int /*<<< orphan*/  LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_MASK ; 
 int /*<<< orphan*/  LPASS_CDC_TOP_CTL ; 
 int /*<<< orphan*/  MCLK_CTL_MCLK_EN_ENABLE ; 
 int /*<<< orphan*/  MCLK_CTL_MCLK_EN_MASK ; 
 int /*<<< orphan*/  TOP_CTL_DIG_MCLK_FREQ_F_12_288MHZ ; 
 int /*<<< orphan*/  TOP_CTL_DIG_MCLK_FREQ_F_9_6MHZ ; 
 int /*<<< orphan*/  TOP_CTL_DIG_MCLK_FREQ_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 struct msm8916_wcd_digital_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				       struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct msm8916_wcd_digital_priv *msm8916_wcd;
	unsigned long mclk_rate;

	msm8916_wcd = FUNC2(component);
	FUNC3(component, LPASS_CDC_CLK_MCLK_CTL,
			    MCLK_CTL_MCLK_EN_MASK,
			    MCLK_CTL_MCLK_EN_ENABLE);
	FUNC3(component, LPASS_CDC_CLK_PDM_CTL,
			    LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_MASK,
			    LPASS_CDC_CLK_PDM_CTL_PDM_CLK_SEL_FB);

	mclk_rate = FUNC0(msm8916_wcd->mclk);
	switch (mclk_rate) {
	case 12288000:
		FUNC3(component, LPASS_CDC_TOP_CTL,
				    TOP_CTL_DIG_MCLK_FREQ_MASK,
				    TOP_CTL_DIG_MCLK_FREQ_F_12_288MHZ);
		break;
	case 9600000:
		FUNC3(component, LPASS_CDC_TOP_CTL,
				    TOP_CTL_DIG_MCLK_FREQ_MASK,
				    TOP_CTL_DIG_MCLK_FREQ_F_9_6MHZ);
		break;
	default:
		FUNC1(component->dev, "Invalid mclk rate %ld\n", mclk_rate);
		break;
	}
	return 0;
}