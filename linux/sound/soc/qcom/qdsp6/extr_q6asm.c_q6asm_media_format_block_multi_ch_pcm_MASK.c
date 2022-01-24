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
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u8 ;
struct audio_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  stream_id; } ;
struct TYPE_3__ {int fmt_blk_size; } ;
struct asm_multi_channel_pcm_fmt_blk_v2 {int is_signed; int /*<<< orphan*/ * channel_mapping; void* sample_rate; int /*<<< orphan*/  bits_per_sample; void* num_channels; TYPE_1__ fmt_blk; } ;
struct TYPE_4__ {int /*<<< orphan*/  opcode; } ;
struct apr_pkt {TYPE_2__ hdr; } ;

/* Variables and functions */
 int APR_HDR_SIZE ; 
 int /*<<< orphan*/  ASM_DATA_CMD_MEDIA_FMT_UPDATE_V2 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCM_MAX_NUM_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct apr_pkt*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct audio_client*,struct apr_pkt*) ; 
 int /*<<< orphan*/  FUNC5 (struct audio_client*,TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,void*) ; 

int FUNC7(struct audio_client *ac,
					  uint32_t rate, uint32_t channels,
					  u8 channel_map[PCM_MAX_NUM_CHANNEL],
					  uint16_t bits_per_sample)
{
	struct asm_multi_channel_pcm_fmt_blk_v2 *fmt;
	struct apr_pkt *pkt;
	u8 *channel_mapping;
	void *p;
	int rc, pkt_size;

	pkt_size = APR_HDR_SIZE + sizeof(*fmt);
	p = FUNC2(pkt_size, GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	pkt = p;
	fmt = p + APR_HDR_SIZE;

	FUNC5(ac, &pkt->hdr, pkt_size, true, ac->stream_id);

	pkt->hdr.opcode = ASM_DATA_CMD_MEDIA_FMT_UPDATE_V2;
	fmt->fmt_blk.fmt_blk_size = sizeof(*fmt) - sizeof(fmt->fmt_blk);
	fmt->num_channels = channels;
	fmt->bits_per_sample = bits_per_sample;
	fmt->sample_rate = rate;
	fmt->is_signed = 1;

	channel_mapping = fmt->channel_mapping;

	if (channel_map) {
		FUNC3(channel_mapping, channel_map, PCM_MAX_NUM_CHANNEL);
	} else {
		if (FUNC6(channel_mapping, channels)) {
			FUNC0(ac->dev, " map channels failed %d\n", channels);
			rc = -EINVAL;
			goto err;
		}
	}

	rc = FUNC4(ac, pkt);

err:
	FUNC1(pkt);
	return rc;
}