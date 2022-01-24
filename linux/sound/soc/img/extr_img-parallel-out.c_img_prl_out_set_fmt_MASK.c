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
typedef  int u32 ;
struct snd_soc_dai {int dummy; } ;
struct img_prl_out {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IMG_PRL_OUT_CTL ; 
 int IMG_PRL_OUT_CTL_EDGE_MASK ; 
 unsigned int SND_SOC_DAIFMT_INV_MASK ; 
#define  SND_SOC_DAIFMT_NB_IF 129 
#define  SND_SOC_DAIFMT_NB_NF 128 
 int FUNC0 (struct img_prl_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_prl_out*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct img_prl_out* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct img_prl_out *prl = FUNC4(dai);
	u32 reg, control_set = 0;
	int ret;

	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
	case SND_SOC_DAIFMT_NB_NF:
		break;
	case SND_SOC_DAIFMT_NB_IF:
		control_set |= IMG_PRL_OUT_CTL_EDGE_MASK;
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC2(prl->dev);
	if (ret < 0)
		return ret;

	reg = FUNC0(prl, IMG_PRL_OUT_CTL);
	reg = (reg & ~IMG_PRL_OUT_CTL_EDGE_MASK) | control_set;
	FUNC1(prl, reg, IMG_PRL_OUT_CTL);
	FUNC3(prl->dev);

	return 0;
}