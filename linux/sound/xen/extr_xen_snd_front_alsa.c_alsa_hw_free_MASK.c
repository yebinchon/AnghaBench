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
struct xen_snd_front_pcm_stream_info {TYPE_1__* evt_pair; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xen_snd_front_pcm_stream_info*) ; 
 struct xen_snd_front_pcm_stream_info* FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct xen_snd_front_pcm_stream_info *stream = FUNC1(substream);
	int ret;

	ret = FUNC2(&stream->evt_pair->req);
	FUNC0(stream);
	return ret;
}