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
struct xen_snd_front_pcm_stream_info {unsigned long buffer_sz; TYPE_1__* evt_pair; scalar_t__ buffer; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,unsigned long) ; 
 struct xen_snd_front_pcm_stream_info* FUNC1 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				int channel, unsigned long pos,
				unsigned long count)
{
	struct xen_snd_front_pcm_stream_info *stream = FUNC1(substream);

	if (FUNC2(pos + count > stream->buffer_sz))
		return -EINVAL;

	FUNC0(stream->buffer + pos, 0, count);

	return FUNC3(&stream->evt_pair->req, pos, count);
}