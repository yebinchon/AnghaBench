#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct snd_pcm_substream* arg; scalar_t__ str_id; } ;
struct sst_runtime_stream {TYPE_3__ stream_info; int /*<<< orphan*/  ops; int /*<<< orphan*/  status_lock; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct sst_runtime_stream* private_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  ops; TYPE_2__* dev; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_runtime_stream*) ; 
 struct sst_runtime_stream* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sst_runtime_stream*) ; 
 int FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_4__* sst ; 
 int /*<<< orphan*/  sst_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
		struct snd_soc_dai *dai)
{
	int ret_val = 0;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct sst_runtime_stream *stream;

	stream = FUNC2(sizeof(*stream), GFP_KERNEL);
	if (!stream)
		return -ENOMEM;
	FUNC8(&stream->status_lock);

	/* get the sst ops */
	FUNC3(&sst_lock);
	if (!sst ||
	    !FUNC9(sst->dev->driver->owner)) {
		FUNC0(dai->dev, "no device available to run\n");
		ret_val = -ENODEV;
		goto out_ops;
	}
	stream->ops = sst->ops;
	FUNC4(&sst_lock);

	stream->stream_info.str_id = 0;

	stream->stream_info.arg = substream;
	/* allocate memory for SST API set */
	runtime->private_data = stream;

	ret_val = FUNC5(stream);
	if (ret_val < 0)
		return ret_val;

	/* Make sure, that the period size is always even */
	FUNC7(substream->runtime, 0,
			   SNDRV_PCM_HW_PARAM_PERIODS, 2);

	return FUNC6(runtime,
			 SNDRV_PCM_HW_PARAM_PERIODS);
out_ops:
	FUNC1(stream);
	FUNC4(&sst_lock);
	return ret_val;
}