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
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct mtk_btcvsd_snd_stream {int packet_r; int packet_w; int prev_packet_idx; int packet_size; int /*<<< orphan*/  prev_frame; } ;
struct mtk_btcvsd_snd {struct mtk_btcvsd_snd_stream* rx; struct mtk_btcvsd_snd_stream* tx; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  tx_lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {int /*<<< orphan*/  buffer_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTCVSD_SND_NAME ; 
 int INT_MAX ; 
 int INT_MIN ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*,int) ; 
 struct mtk_btcvsd_snd* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC5
	(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component =
		FUNC2(rtd, BTCVSD_SND_NAME);
	struct mtk_btcvsd_snd *bt = FUNC1(component);
	struct mtk_btcvsd_snd_stream *bt_stream;
	snd_pcm_uframes_t frame = 0;
	int byte = 0;
	int hw_packet_ptr;
	int packet_diff;
	spinlock_t *lock;	/* spinlock for bt stream control */
	unsigned long flags;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		lock = &bt->tx_lock;
		bt_stream = bt->tx;
	} else {
		lock = &bt->rx_lock;
		bt_stream = bt->rx;
	}

	FUNC3(lock, flags);
	hw_packet_ptr = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ?
			bt->tx->packet_r : bt->rx->packet_w;

	/* get packet diff from last time */
	if (hw_packet_ptr >= bt_stream->prev_packet_idx) {
		packet_diff = hw_packet_ptr - bt_stream->prev_packet_idx;
	} else {
		/* integer overflow */
		packet_diff = (INT_MAX - bt_stream->prev_packet_idx) +
			      (hw_packet_ptr - INT_MIN) + 1;
	}
	bt_stream->prev_packet_idx = hw_packet_ptr;

	/* increased bytes */
	byte = packet_diff * bt_stream->packet_size;

	frame = FUNC0(substream, byte);
	frame += bt_stream->prev_frame;
	frame %= substream->runtime->buffer_size;

	bt_stream->prev_frame = frame;

	FUNC4(lock, flags);

	return frame;
}