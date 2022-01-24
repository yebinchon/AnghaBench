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
struct xen_snd_front_pcm_stream_info {int /*<<< orphan*/  pages; int /*<<< orphan*/  buffer_sz; scalar_t__ buffer; int /*<<< orphan*/  shbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xen_snd_front_pcm_stream_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct xen_snd_front_pcm_stream_info *stream)
{
	FUNC4(&stream->shbuf);
	FUNC3(&stream->shbuf);
	if (stream->buffer)
		FUNC0(stream->buffer, stream->buffer_sz);
	FUNC1(stream->pages);
	FUNC2(stream);
}