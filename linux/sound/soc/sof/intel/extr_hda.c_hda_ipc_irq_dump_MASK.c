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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct hdac_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_HDA_BAR ; 
 int /*<<< orphan*/  HDA_DSP_PP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_REG_ADSPIS ; 
 int /*<<< orphan*/  RIRBSTS ; 
 int /*<<< orphan*/  SOF_HDA_INTCTL ; 
 int /*<<< orphan*/  SOF_HDA_INTSTS ; 
 int /*<<< orphan*/  SOF_HDA_REG_PP_PPSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdac_bus* FUNC3 (struct snd_sof_dev*) ; 

void FUNC4(struct snd_sof_dev *sdev)
{
	struct hdac_bus *bus = FUNC3(sdev);
	u32 adspis;
	u32 intsts;
	u32 intctl;
	u32 ppsts;
	u8 rirbsts;

	/* read key IRQ stats and config registers */
	adspis = FUNC2(sdev, HDA_DSP_BAR, HDA_DSP_REG_ADSPIS);
	intsts = FUNC2(sdev, HDA_DSP_HDA_BAR, SOF_HDA_INTSTS);
	intctl = FUNC2(sdev, HDA_DSP_HDA_BAR, SOF_HDA_INTCTL);
	ppsts = FUNC2(sdev, HDA_DSP_PP_BAR, SOF_HDA_REG_PP_PPSTS);
	rirbsts = FUNC1(bus, RIRBSTS);

	FUNC0(sdev->dev,
		"error: hda irq intsts 0x%8.8x intlctl 0x%8.8x rirb %2.2x\n",
		intsts, intctl, rirbsts);
	FUNC0(sdev->dev,
		"error: dsp irq ppsts 0x%8.8x adspis 0x%8.8x\n",
		ppsts, adspis);
}