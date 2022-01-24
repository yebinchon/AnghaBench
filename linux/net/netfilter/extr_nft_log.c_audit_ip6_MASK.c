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
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  nexthdr; } ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  _ip6h ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*,scalar_t__,int,struct ipv6hdr*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC4(struct audit_buffer *ab, struct sk_buff *skb)
{
	struct ipv6hdr _ip6h;
	const struct ipv6hdr *ih;
	u8 nexthdr;
	__be16 frag_off;

	ih = FUNC2(skb, FUNC3(skb), sizeof(_ip6h), &_ip6h);
	if (!ih)
		return false;

	nexthdr = ih->nexthdr;
	FUNC1(skb, FUNC3(skb) + sizeof(_ip6h), &nexthdr, &frag_off);

	FUNC0(ab, " saddr=%pI6c daddr=%pI6c proto=%hhu",
			 &ih->saddr, &ih->daddr, nexthdr);

	return true;
}