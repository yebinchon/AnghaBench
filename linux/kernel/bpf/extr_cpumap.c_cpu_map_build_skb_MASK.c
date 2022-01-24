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
struct xdp_frame {int headroom; unsigned int len; int /*<<< orphan*/  dev_rx; scalar_t__ metasize; int /*<<< orphan*/  data; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct bpf_cpu_map_entry {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct xdp_frame*) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct bpf_cpu_map_entry *rcpu,
					 struct xdp_frame *xdpf,
					 struct sk_buff *skb)
{
	unsigned int hard_start_headroom;
	unsigned int frame_size;
	void *pkt_data_start;

	/* Part of headroom was reserved to xdpf */
	hard_start_headroom = sizeof(struct xdp_frame) +  xdpf->headroom;

	/* build_skb need to place skb_shared_info after SKB end, and
	 * also want to know the memory "truesize".  Thus, need to
	 * know the memory frame size backing xdp_buff.
	 *
	 * XDP was designed to have PAGE_SIZE frames, but this
	 * assumption is not longer true with ixgbe and i40e.  It
	 * would be preferred to set frame_size to 2048 or 4096
	 * depending on the driver.
	 *   frame_size = 2048;
	 *   frame_len  = frame_size - sizeof(*xdp_frame);
	 *
	 * Instead, with info avail, skb_shared_info in placed after
	 * packet len.  This, unfortunately fakes the truesize.
	 * Another disadvantage of this approach, the skb_shared_info
	 * is not at a fixed memory location, with mixed length
	 * packets, which is bad for cache-line hotness.
	 */
	frame_size = FUNC0(xdpf->len + hard_start_headroom) +
		FUNC0(sizeof(struct skb_shared_info));

	pkt_data_start = xdpf->data - hard_start_headroom;
	skb = FUNC2(skb, pkt_data_start, frame_size);
	if (FUNC6(!skb))
		return NULL;

	FUNC5(skb, hard_start_headroom);
	FUNC1(skb, xdpf->len);
	if (xdpf->metasize)
		FUNC4(skb, xdpf->metasize);

	/* Essential SKB info: protocol and skb->dev */
	skb->protocol = FUNC3(skb, xdpf->dev_rx);

	/* Optional SKB info, currently missing:
	 * - HW checksum info		(skb->ip_summed)
	 * - HW RX hash			(skb_set_hash)
	 * - RX ring dev queue index	(skb_record_rx_queue)
	 */

	/* Until page_pool get SKB return path, release DMA here */
	FUNC7(xdpf);

	/* Allow SKB to reuse area used by xdp_frame */
	FUNC8(xdpf);

	return skb;
}