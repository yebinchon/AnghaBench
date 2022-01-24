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
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {scalar_t__ security_enabled; } ;
struct ieee802154_hdr {int /*<<< orphan*/  sec; TYPE_1__ fc; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct ieee802154_hdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ieee802154_hdr*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee802154_hdr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

int
FUNC7(struct sk_buff *skb, struct ieee802154_hdr *hdr)
{
	int pos = 3, rc;

	if (!FUNC5(skb, 3))
		return -EINVAL;

	FUNC4(hdr, skb->data, 3);

	rc = FUNC2(hdr);
	if (rc < 0 || !FUNC5(skb, rc))
		return -EINVAL;

	pos += FUNC0(skb->data + pos, hdr);

	if (hdr->fc.security_enabled) {
		int want = pos + FUNC3(skb->data[pos]);

		if (!FUNC5(skb, want))
			return -EINVAL;

		pos += FUNC1(skb->data + pos, &hdr->sec);
	}

	FUNC6(skb, pos);
	return pos;
}