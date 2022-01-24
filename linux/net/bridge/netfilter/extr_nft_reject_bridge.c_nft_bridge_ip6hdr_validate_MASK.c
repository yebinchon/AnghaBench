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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct ipv6hdr {int version; int /*<<< orphan*/  payload_len; } ;

/* Variables and functions */
 struct ipv6hdr* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb)
{
	struct ipv6hdr *hdr;
	u32 pkt_len;

	if (!FUNC2(skb, sizeof(struct ipv6hdr)))
		return 0;

	hdr = FUNC0(skb);
	if (hdr->version != 6)
		return 0;

	pkt_len = FUNC1(hdr->payload_len);
	if (pkt_len + sizeof(struct ipv6hdr) > skb->len)
		return 0;

	return 1;
}