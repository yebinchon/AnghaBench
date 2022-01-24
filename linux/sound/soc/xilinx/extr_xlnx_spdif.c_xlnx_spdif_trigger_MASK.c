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
typedef  int /*<<< orphan*/  u32 ;
struct spdif_dev_data {scalar_t__ base; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 scalar_t__ XSPDIF_CONTROL_REG ; 
 int /*<<< orphan*/  XSPDIF_CORE_ENABLE_MASK ; 
 struct spdif_dev_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream, int cmd,
			      struct snd_soc_dai *dai)
{
	u32 val;
	int ret = 0;
	struct spdif_dev_data *ctx = FUNC0(dai->dev);

	val = FUNC1(ctx->base + XSPDIF_CONTROL_REG);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		val |= XSPDIF_CORE_ENABLE_MASK;
		FUNC3(val, ctx->base + XSPDIF_CONTROL_REG);
		if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
			ret = FUNC2(dai);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		val &= ~XSPDIF_CORE_ENABLE_MASK;
		FUNC3(val, ctx->base + XSPDIF_CONTROL_REG);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}