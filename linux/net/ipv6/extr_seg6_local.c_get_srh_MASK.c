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
struct sk_buff {scalar_t__ data; } ;
struct ipv6_sr_hdr {int hdrlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_ROUTING ; 
 scalar_t__ FUNC0 (struct sk_buff*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6_sr_hdr*,int) ; 

__attribute__((used)) static struct ipv6_sr_hdr *FUNC3(struct sk_buff *skb)
{
	struct ipv6_sr_hdr *srh;
	int len, srhoff = 0;

	if (FUNC0(skb, &srhoff, IPPROTO_ROUTING, NULL, NULL) < 0)
		return NULL;

	if (!FUNC1(skb, srhoff + sizeof(*srh)))
		return NULL;

	srh = (struct ipv6_sr_hdr *)(skb->data + srhoff);

	len = (srh->hdrlen + 1) << 3;

	if (!FUNC1(skb, srhoff + len))
		return NULL;

	if (!FUNC2(srh, len))
		return NULL;

	return srh;
}