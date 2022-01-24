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
struct lowpan_nhc {scalar_t__ compress; } ;
struct ipv6hdr {size_t nexthdr; } ;

/* Variables and functions */
 int ENOENT ; 
 struct lowpan_nhc** lowpan_nexthdr_nhcs ; 
 int /*<<< orphan*/  lowpan_nhc_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct sk_buff *skb,
				 const struct ipv6hdr *hdr, u8 **hc_ptr)
{
	struct lowpan_nhc *nhc;
	int ret = 0;

	FUNC0(&lowpan_nhc_lock);

	nhc = lowpan_nexthdr_nhcs[hdr->nexthdr];
	if (!(nhc && nhc->compress))
		ret = -ENOENT;

	FUNC1(&lowpan_nhc_lock);

	return ret;
}