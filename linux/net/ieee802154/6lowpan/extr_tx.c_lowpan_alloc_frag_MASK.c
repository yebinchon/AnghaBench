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
struct sk_buff {int /*<<< orphan*/  mac_len; int /*<<< orphan*/  priority; struct net_device* dev; } ;
struct net_device {scalar_t__ needed_headroom; scalar_t__ needed_tailroom; } ;
struct ieee802154_hdr {int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct TYPE_2__ {struct net_device* wdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct sk_buff*
FUNC11(struct sk_buff *skb, int size,
		  const struct ieee802154_hdr *master_hdr, bool frag1)
{
	struct net_device *wdev = FUNC4(skb->dev)->wdev;
	struct sk_buff *frag;
	int rc;

	frag = FUNC1(wdev->needed_headroom + wdev->needed_tailroom + size,
			 GFP_ATOMIC);

	if (FUNC3(frag)) {
		frag->dev = wdev;
		frag->priority = skb->priority;
		FUNC8(frag, wdev->needed_headroom);
		FUNC9(frag);
		*FUNC5(frag) = *FUNC5(skb);

		if (frag1) {
			FUNC7(frag, FUNC6(skb), skb->mac_len);
		} else {
			rc = FUNC10(frag, wdev,
						  &master_hdr->dest,
						  &master_hdr->source, size);
			if (rc < 0) {
				FUNC2(frag);
				return FUNC0(rc);
			}
		}
	} else {
		frag = FUNC0(-ENOMEM);
	}

	return frag;
}