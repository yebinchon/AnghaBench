#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sof_intel_hda_dev {TYPE_2__* dtrace_stream; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct hdac_stream {int /*<<< orphan*/  stream_tag; } ;
struct TYPE_4__ {struct hdac_stream hstream; } ;
struct TYPE_3__ {struct sof_intel_hda_dev* hw_pdata; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct snd_sof_dev *sdev)
{
	struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;
	struct hdac_stream *hstream;

	if (hda->dtrace_stream) {
		hstream = &hda->dtrace_stream->hstream;
		FUNC1(sdev,
				   SNDRV_PCM_STREAM_CAPTURE,
				   hstream->stream_tag);
		hda->dtrace_stream = NULL;
		return 0;
	}

	FUNC0(sdev->dev, "DMA trace stream is not opened!\n");
	return -ENODEV;
}