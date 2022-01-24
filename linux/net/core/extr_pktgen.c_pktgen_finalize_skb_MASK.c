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
struct timespec64 {int tv_sec; int tv_nsec; } ;
struct sk_buff {int /*<<< orphan*/  data_len; int /*<<< orphan*/  len; } ;
struct pktgen_hdr {void* tv_usec; void* tv_sec; void* seq_num; void* pgh_magic; } ;
struct pktgen_dev {int nfrags; int node; int flags; int seq_num; int /*<<< orphan*/  page; } ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int F_NODE ; 
 int F_NO_TIMESTAMP ; 
 int GFP_KERNEL ; 
 int MAX_SKB_FRAGS ; 
 int NSEC_PER_USEC ; 
 int PAGE_SIZE ; 
 int PKTGEN_MAGIC ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec64*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 struct pktgen_hdr* FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct pktgen_dev *pkt_dev, struct sk_buff *skb,
				int datalen)
{
	struct timespec64 timestamp;
	struct pktgen_hdr *pgh;

	pgh = FUNC9(skb, sizeof(*pgh));
	datalen -= sizeof(*pgh);

	if (pkt_dev->nfrags <= 0) {
		FUNC10(skb, datalen);
	} else {
		int frags = pkt_dev->nfrags;
		int i, len;
		int frag_len;


		if (frags > MAX_SKB_FRAGS)
			frags = MAX_SKB_FRAGS;
		len = datalen - frags * PAGE_SIZE;
		if (len > 0) {
			FUNC10(skb, len);
			datalen = frags * PAGE_SIZE;
		}

		i = 0;
		frag_len = (datalen/frags) < PAGE_SIZE ?
			   (datalen/frags) : PAGE_SIZE;
		while (datalen > 0) {
			if (FUNC12(!pkt_dev->page)) {
				int node = FUNC4();

				if (pkt_dev->node >= 0 && (pkt_dev->flags & F_NODE))
					node = pkt_dev->node;
				pkt_dev->page = FUNC0(node, GFP_KERNEL | __GFP_ZERO, 0);
				if (!pkt_dev->page)
					break;
			}
			FUNC1(pkt_dev->page);
			FUNC6(skb, i, pkt_dev->page);
			FUNC5(&FUNC11(skb)->frags[i], 0);
			/*last fragment, fill rest of data*/
			if (i == (frags - 1))
				FUNC8(&FUNC11(skb)->frags[i],
				    (datalen < PAGE_SIZE ? datalen : PAGE_SIZE));
			else
				FUNC8(&FUNC11(skb)->frags[i], frag_len);
			datalen -= FUNC7(&FUNC11(skb)->frags[i]);
			skb->len += FUNC7(&FUNC11(skb)->frags[i]);
			skb->data_len += FUNC7(&FUNC11(skb)->frags[i]);
			i++;
			FUNC11(skb)->nr_frags = i;
		}
	}

	/* Stamp the time, and sequence number,
	 * convert them to network byte order
	 */
	pgh->pgh_magic = FUNC2(PKTGEN_MAGIC);
	pgh->seq_num = FUNC2(pkt_dev->seq_num);

	if (pkt_dev->flags & F_NO_TIMESTAMP) {
		pgh->tv_sec = 0;
		pgh->tv_usec = 0;
	} else {
		/*
		 * pgh->tv_sec wraps in y2106 when interpreted as unsigned
		 * as done by wireshark, or y2038 when interpreted as signed.
		 * This is probably harmless, but if anyone wants to improve
		 * it, we could introduce a variant that puts 64-bit nanoseconds
		 * into the respective header bytes.
		 * This would also be slightly faster to read.
		 */
		FUNC3(&timestamp);
		pgh->tv_sec = FUNC2(timestamp.tv_sec);
		pgh->tv_usec = FUNC2(timestamp.tv_nsec / NSEC_PER_USEC);
	}
}