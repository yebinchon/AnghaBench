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
typedef  int u8 ;
struct sta32x_priv {unsigned int format; int /*<<< orphan*/  regmap; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAIFMT_CBS_CFS 133 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 132 
 unsigned int SND_SOC_DAIFMT_INV_MASK ; 
#define  SND_SOC_DAIFMT_LEFT_J 131 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
#define  SND_SOC_DAIFMT_NB_IF 130 
#define  SND_SOC_DAIFMT_NB_NF 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 int /*<<< orphan*/  STA32X_CONFB ; 
 int STA32X_CONFB_C1IM ; 
 int STA32X_CONFB_C2IM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct sta32x_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai,
			      unsigned int fmt)
{
	struct snd_soc_component *component = codec_dai->component;
	struct sta32x_priv *sta32x = FUNC1(component);
	u8 confb = 0;

	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBS_CFS:
		break;
	default:
		return -EINVAL;
	}

	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_I2S:
	case SND_SOC_DAIFMT_RIGHT_J:
	case SND_SOC_DAIFMT_LEFT_J:
		sta32x->format = fmt & SND_SOC_DAIFMT_FORMAT_MASK;
		break;
	default:
		return -EINVAL;
	}

	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
	case SND_SOC_DAIFMT_NB_NF:
		confb |= STA32X_CONFB_C2IM;
		break;
	case SND_SOC_DAIFMT_NB_IF:
		confb |= STA32X_CONFB_C1IM;
		break;
	default:
		return -EINVAL;
	}

	return FUNC0(sta32x->regmap, STA32X_CONFB,
				  STA32X_CONFB_C1IM | STA32X_CONFB_C2IM, confb);
}