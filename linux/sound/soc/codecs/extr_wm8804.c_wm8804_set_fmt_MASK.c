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
typedef  int u16 ;
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAIFMT_CBM_CFM 138 
#define  SND_SOC_DAIFMT_CBS_CFS 137 
#define  SND_SOC_DAIFMT_DSP_A 136 
#define  SND_SOC_DAIFMT_DSP_B 135 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 134 
#define  SND_SOC_DAIFMT_IB_IF 133 
#define  SND_SOC_DAIFMT_IB_NF 132 
 unsigned int SND_SOC_DAIFMT_INV_MASK ; 
#define  SND_SOC_DAIFMT_LEFT_J 131 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
#define  SND_SOC_DAIFMT_NB_IF 130 
#define  SND_SOC_DAIFMT_NB_NF 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 int /*<<< orphan*/  WM8804_AIFRX ; 
 int /*<<< orphan*/  WM8804_AIFTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct snd_soc_component *component;
	u16 format, master, bcp, lrp;

	component = dai->component;

	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_I2S:
		format = 0x2;
		break;
	case SND_SOC_DAIFMT_RIGHT_J:
		format = 0x0;
		break;
	case SND_SOC_DAIFMT_LEFT_J:
		format = 0x1;
		break;
	case SND_SOC_DAIFMT_DSP_A:
	case SND_SOC_DAIFMT_DSP_B:
		format = 0x3;
		break;
	default:
		FUNC0(dai->dev, "Unknown dai format\n");
		return -EINVAL;
	}

	/* set data format */
	FUNC1(component, WM8804_AIFTX, 0x3, format);
	FUNC1(component, WM8804_AIFRX, 0x3, format);

	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBM_CFM:
		master = 1;
		break;
	case SND_SOC_DAIFMT_CBS_CFS:
		master = 0;
		break;
	default:
		FUNC0(dai->dev, "Unknown master/slave configuration\n");
		return -EINVAL;
	}

	/* set master/slave mode */
	FUNC1(component, WM8804_AIFRX, 0x40, master << 6);

	bcp = lrp = 0;
	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
	case SND_SOC_DAIFMT_NB_NF:
		break;
	case SND_SOC_DAIFMT_IB_IF:
		bcp = lrp = 1;
		break;
	case SND_SOC_DAIFMT_IB_NF:
		bcp = 1;
		break;
	case SND_SOC_DAIFMT_NB_IF:
		lrp = 1;
		break;
	default:
		FUNC0(dai->dev, "Unknown polarity configuration\n");
		return -EINVAL;
	}

	/* set frame inversion */
	FUNC1(component, WM8804_AIFTX, 0x10 | 0x20,
			    (bcp << 4) | (lrp << 5));
	FUNC1(component, WM8804_AIFRX, 0x10 | 0x20,
			    (bcp << 4) | (lrp << 5));
	return 0;
}