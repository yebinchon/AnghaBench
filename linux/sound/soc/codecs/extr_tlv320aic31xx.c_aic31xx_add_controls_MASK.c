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
struct snd_soc_component {int dummy; } ;
struct aic31xx_priv {int codec_type; } ;

/* Variables and functions */
 int AIC31XX_STEREO_CLASS_D_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DAC31XX_BIT ; 
 int /*<<< orphan*/  aic310x_snd_controls ; 
 int /*<<< orphan*/  aic311x_snd_controls ; 
 int /*<<< orphan*/  aic31xx_snd_controls ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aic31xx_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	int ret = 0;
	struct aic31xx_priv *aic31xx = FUNC2(component);

	if (!(aic31xx->codec_type & DAC31XX_BIT))
		ret = FUNC1(
			component, aic31xx_snd_controls,
			FUNC0(aic31xx_snd_controls));
	if (ret)
		return ret;

	if (aic31xx->codec_type & AIC31XX_STEREO_CLASS_D_BIT)
		ret = FUNC1(
			component, aic311x_snd_controls,
			FUNC0(aic311x_snd_controls));
	else
		ret = FUNC1(
			component, aic310x_snd_controls,
			FUNC0(aic310x_snd_controls));

	return ret;
}