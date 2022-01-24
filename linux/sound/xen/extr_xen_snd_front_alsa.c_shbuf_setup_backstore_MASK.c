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
struct xen_snd_front_pcm_stream_info {size_t buffer_sz; int num_pages; scalar_t__ buffer; int /*<<< orphan*/ * pages; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct xen_snd_front_pcm_stream_info *stream,
				 size_t buffer_sz)
{
	int i;

	stream->buffer = FUNC1(buffer_sz, GFP_KERNEL);
	if (!stream->buffer)
		return -ENOMEM;

	stream->buffer_sz = buffer_sz;
	stream->num_pages = FUNC0(stream->buffer_sz, PAGE_SIZE);
	stream->pages = FUNC2(stream->num_pages, sizeof(struct page *),
				GFP_KERNEL);
	if (!stream->pages)
		return -ENOMEM;

	for (i = 0; i < stream->num_pages; i++)
		stream->pages[i] = FUNC3(stream->buffer + i * PAGE_SIZE);

	return 0;
}