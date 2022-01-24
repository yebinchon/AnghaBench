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
struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; int* data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  rose_address ;

/* Variables and functions */
 unsigned short ROSE_CALL_REQUEST ; 
 size_t ROSE_CALL_REQ_ADDR_LEN_OFF ; 
 unsigned short ROSE_CALL_REQ_ADDR_LEN_VAL ; 
 int ROSE_CALL_REQ_DEST_ADDR_OFF ; 
 scalar_t__ ROSE_CALL_REQ_FACILITIES_OFF ; 
 int ROSE_DEFAULT_MAXVC ; 
 int ROSE_LOOPBACK_LIMIT ; 
 scalar_t__ ROSE_MIN_LEN ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  loopback_queue ; 
 int /*<<< orphan*/  loopback_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rose_loopback_neigh ; 
 scalar_t__ FUNC4 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,unsigned int) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct timer_list *unused)
{
	struct sk_buff *skb;
	struct net_device *dev;
	rose_address *dest;
	struct sock *sk;
	unsigned short frametype;
	unsigned int lci_i, lci_o;
	int count;

	for (count = 0; count < ROSE_LOOPBACK_LIMIT; count++) {
		skb = FUNC6(&loopback_queue);
		if (!skb)
			return;
		if (skb->len < ROSE_MIN_LEN) {
			FUNC0(skb);
			continue;
		}
		lci_i     = ((skb->data[0] << 8) & 0xF00) + ((skb->data[1] << 0) & 0x0FF);
		frametype = skb->data[2];
		if (frametype == ROSE_CALL_REQUEST &&
		    (skb->len <= ROSE_CALL_REQ_FACILITIES_OFF ||
		     skb->data[ROSE_CALL_REQ_ADDR_LEN_OFF] !=
		     ROSE_CALL_REQ_ADDR_LEN_VAL)) {
			FUNC0(skb);
			continue;
		}
		dest      = (rose_address *)(skb->data + ROSE_CALL_REQ_DEST_ADDR_OFF);
		lci_o     = ROSE_DEFAULT_MAXVC + 1 - lci_i;

		FUNC8(skb);

		sk = FUNC3(lci_o, rose_loopback_neigh);
		if (sk) {
			if (FUNC4(sk, skb) == 0)
				FUNC0(skb);
			continue;
		}

		if (frametype == ROSE_CALL_REQUEST) {
			if ((dev = FUNC2(dest)) != NULL) {
				if (FUNC5(skb, dev, rose_loopback_neigh, lci_o) == 0)
					FUNC0(skb);
			} else {
				FUNC0(skb);
			}
		} else {
			FUNC0(skb);
		}
	}
	if (!FUNC7(&loopback_queue))
		FUNC1(&loopback_timer, jiffies + 1);
}