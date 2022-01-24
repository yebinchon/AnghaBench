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
typedef  int u32 ;
struct i2s_stream_instance {int xfer_resolution; scalar_t__ acp3x_base; } ;
struct i2s_dev_data {int tdm_mode; int tdm_fmt; scalar_t__ acp3x_base; TYPE_4__* capture_stream; TYPE_2__* play_stream; } ;
struct device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* runtime; } ;
struct TYPE_7__ {struct i2s_stream_instance* private_data; } ;
struct TYPE_6__ {TYPE_1__* runtime; } ;
struct TYPE_5__ {struct i2s_stream_instance* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct i2s_stream_instance*,int /*<<< orphan*/ ) ; 
 struct i2s_dev_data* FUNC2 (struct device*) ; 
 scalar_t__ mmACP_BTTDM_IRER ; 
 scalar_t__ mmACP_BTTDM_ITER ; 
 scalar_t__ mmACP_BTTDM_RXFRMT ; 
 scalar_t__ mmACP_BTTDM_TXFRMT ; 
 scalar_t__ mmACP_EXTERNAL_INTR_ENB ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	int status;
	u32 val;
	struct i2s_dev_data *adata = FUNC2(dev);

	status = FUNC0(adata->acp3x_base);
	if (status)
		return -ENODEV;

	if (adata->play_stream && adata->play_stream->runtime) {
		struct i2s_stream_instance *rtd =
			adata->play_stream->runtime->private_data;
		FUNC1(rtd, SNDRV_PCM_STREAM_PLAYBACK);
		FUNC4((rtd->xfer_resolution  << 3),
			  rtd->acp3x_base + mmACP_BTTDM_ITER);
		if (adata->tdm_mode == true) {
			FUNC4(adata->tdm_fmt, adata->acp3x_base +
				  mmACP_BTTDM_TXFRMT);
			val = FUNC3(adata->acp3x_base + mmACP_BTTDM_ITER);
			FUNC4((val | 0x2), adata->acp3x_base +
				  mmACP_BTTDM_ITER);
		}
	}

	if (adata->capture_stream && adata->capture_stream->runtime) {
		struct i2s_stream_instance *rtd =
			adata->capture_stream->runtime->private_data;
		FUNC1(rtd, SNDRV_PCM_STREAM_CAPTURE);
		FUNC4((rtd->xfer_resolution  << 3),
			  rtd->acp3x_base + mmACP_BTTDM_IRER);
		if (adata->tdm_mode == true) {
			FUNC4(adata->tdm_fmt, adata->acp3x_base +
				  mmACP_BTTDM_RXFRMT);
			val = FUNC3(adata->acp3x_base + mmACP_BTTDM_IRER);
			FUNC4((val | 0x2), adata->acp3x_base +
				  mmACP_BTTDM_IRER);
		}
	}

	FUNC4(1, adata->acp3x_base + mmACP_EXTERNAL_INTR_ENB);
	return 0;
}