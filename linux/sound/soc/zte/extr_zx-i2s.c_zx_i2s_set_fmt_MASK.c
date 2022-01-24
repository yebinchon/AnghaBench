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
struct zx_i2s_info {int master; scalar_t__ reg_base; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAIFMT_CBM_CFM 132 
#define  SND_SOC_DAIFMT_CBS_CFS 131 
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 130 
#define  SND_SOC_DAIFMT_LEFT_J 129 
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ; 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 unsigned long ZX_I2S_TIMING_ALIGN_MASK ; 
 scalar_t__ ZX_I2S_TIMING_CTRL ; 
 unsigned long ZX_I2S_TIMING_I2S ; 
 unsigned long ZX_I2S_TIMING_LSB_JUSTIF ; 
 unsigned long ZX_I2S_TIMING_MAST ; 
 unsigned long ZX_I2S_TIMING_MSB_JUSTIF ; 
 unsigned long ZX_I2S_TIMING_MS_MASK ; 
 unsigned long ZX_I2S_TIMING_SLAVE ; 
 unsigned long ZX_I2S_TIMING_STD_I2S ; 
 unsigned long ZX_I2S_TIMING_SYNC_MASK ; 
 unsigned long ZX_I2S_TIMING_TEAK_MASK ; 
 unsigned long ZX_I2S_TIMING_TIMING_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 struct zx_i2s_info* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *cpu_dai, unsigned int fmt)
{
	struct zx_i2s_info *i2s = FUNC2(cpu_dai);
	unsigned long val;

	val = FUNC1(i2s->reg_base + ZX_I2S_TIMING_CTRL);
	val &= ~(ZX_I2S_TIMING_TIMING_MASK | ZX_I2S_TIMING_ALIGN_MASK |
			ZX_I2S_TIMING_TEAK_MASK | ZX_I2S_TIMING_SYNC_MASK |
			ZX_I2S_TIMING_MS_MASK);

	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_I2S:
		val |= (ZX_I2S_TIMING_I2S | ZX_I2S_TIMING_STD_I2S);
		break;
	case SND_SOC_DAIFMT_LEFT_J:
		val |= (ZX_I2S_TIMING_I2S | ZX_I2S_TIMING_MSB_JUSTIF);
		break;
	case SND_SOC_DAIFMT_RIGHT_J:
		val |= (ZX_I2S_TIMING_I2S | ZX_I2S_TIMING_LSB_JUSTIF);
		break;
	default:
		FUNC0(cpu_dai->dev, "Unknown i2s timing\n");
		return -EINVAL;
	}

	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
	case SND_SOC_DAIFMT_CBM_CFM:
		/* Codec is master, and I2S is slave. */
		i2s->master = 0;
		val |= ZX_I2S_TIMING_SLAVE;
		break;
	case SND_SOC_DAIFMT_CBS_CFS:
		/* Codec is slave, and I2S is master. */
		i2s->master = 1;
		val |= ZX_I2S_TIMING_MAST;
		break;
	default:
		FUNC0(cpu_dai->dev, "Unknown master/slave format\n");
		return -EINVAL;
	}

	FUNC3(val, i2s->reg_base + ZX_I2S_TIMING_CTRL);
	return 0;
}