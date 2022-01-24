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
struct xen_snd_front_pcm_stream_info {int is_open; scalar_t__ num_pages; int /*<<< orphan*/ * pages; scalar_t__ buffer_sz; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  shbuf; int /*<<< orphan*/  evt_pair; int /*<<< orphan*/  hw_ptr; scalar_t__ out_frames; scalar_t__ be_cur_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xen_snd_front_pcm_stream_info *stream)
{
	stream->is_open = false;
	stream->be_cur_frame = 0;
	stream->out_frames = 0;
	FUNC0(&stream->hw_ptr, 0);
	FUNC2(stream->evt_pair);
	FUNC1(&stream->shbuf, 0, sizeof(stream->shbuf));
	stream->buffer = NULL;
	stream->buffer_sz = 0;
	stream->pages = NULL;
	stream->num_pages = 0;
}