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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct xdp_frame {unsigned int len; unsigned int metasize; TYPE_1__ mem; scalar_t__ headroom; void* data; } ;
struct xdp_buff {unsigned int data; unsigned int data_meta; int data_end; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_TYPE_PAGE_ORDER0 ; 
 int PAGE_SIZE ; 
 struct page* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xdp_frame*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdp_buff*) ; 

struct xdp_frame *FUNC6(struct xdp_buff *xdp)
{
	unsigned int metasize, totsize;
	void *addr, *data_to_copy;
	struct xdp_frame *xdpf;
	struct page *page;

	/* Clone into a MEM_TYPE_PAGE_ORDER0 xdp_frame. */
	metasize = FUNC4(xdp) ? 0 :
		   xdp->data - xdp->data_meta;
	totsize = xdp->data_end - xdp->data + metasize;

	if (sizeof(*xdpf) + totsize > PAGE_SIZE)
		return NULL;

	page = FUNC0();
	if (!page)
		return NULL;

	addr = FUNC3(page);
	xdpf = addr;
	FUNC2(xdpf, 0, sizeof(*xdpf));

	addr += sizeof(*xdpf);
	data_to_copy = metasize ? xdp->data_meta : xdp->data;
	FUNC1(addr, data_to_copy, totsize);

	xdpf->data = addr + metasize;
	xdpf->len = totsize - metasize;
	xdpf->headroom = 0;
	xdpf->metasize = metasize;
	xdpf->mem.type = MEM_TYPE_PAGE_ORDER0;

	FUNC5(xdp);
	return xdpf;
}