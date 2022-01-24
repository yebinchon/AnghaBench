#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct txx9aclc_soc_device {struct txx9aclc_dmadata* dmadata; } ;
struct txx9aclc_dmadata {int dummy; } ;
struct snd_pcm_substream {size_t stream; TYPE_1__* runtime; } ;
struct TYPE_2__ {struct txx9aclc_dmadata* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txx9aclc_pcm_hardware ; 
 struct txx9aclc_soc_device txx9aclc_soc_device ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct txx9aclc_soc_device *dev = &txx9aclc_soc_device;
	struct txx9aclc_dmadata *dmadata = &dev->dmadata[substream->stream];
	int ret;

	ret = FUNC1(substream, &txx9aclc_pcm_hardware);
	if (ret)
		return ret;
	/* ensure that buffer size is a multiple of period size */
	ret = FUNC0(substream->runtime,
					    SNDRV_PCM_HW_PARAM_PERIODS);
	if (ret < 0)
		return ret;
	substream->runtime->private_data = dmadata;
	return 0;
}