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
typedef  size_t u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ security_enabled; } ;
struct ieee802154_hdr {int /*<<< orphan*/  sec; TYPE_1__ fc; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (size_t const) ; 
 scalar_t__ FUNC1 (size_t const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff const*,struct ieee802154_hdr*) ; 
 int* ieee802154_sechdr_lengths ; 
 size_t* FUNC3 (struct sk_buff const*) ; 
 size_t const* FUNC4 (struct sk_buff const*) ; 

int
FUNC5(const struct sk_buff *skb, struct ieee802154_hdr *hdr)
{
	const u8 *buf = FUNC3(skb);
	int pos;

	pos = FUNC2(skb, hdr);
	if (pos < 0)
		return -EINVAL;

	if (hdr->fc.security_enabled) {
		u8 key_id_mode = FUNC0(*(buf + pos));
		int want = pos + ieee802154_sechdr_lengths[key_id_mode];

		if (buf + want > FUNC4(skb))
			return -EINVAL;

		pos += FUNC1(buf + pos, &hdr->sec);
	}

	return pos;
}