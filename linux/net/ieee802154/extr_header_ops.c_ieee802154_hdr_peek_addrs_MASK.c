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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct ieee802154_hdr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,struct ieee802154_hdr*) ; 
 int FUNC1 (struct ieee802154_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee802154_hdr*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff const*) ; 
 int /*<<< orphan*/  const* FUNC4 (struct sk_buff const*) ; 

int
FUNC5(const struct sk_buff *skb, struct ieee802154_hdr *hdr)
{
	const u8 *buf = FUNC3(skb);
	int pos = 3, rc;

	if (buf + 3 > FUNC4(skb))
		return -EINVAL;

	FUNC2(hdr, buf, 3);

	rc = FUNC1(hdr);
	if (rc < 0 || buf + rc > FUNC4(skb))
		return -EINVAL;

	pos += FUNC0(buf + pos, hdr);
	return pos;
}