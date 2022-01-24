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
struct sk_buff {int dummy; } ;
struct net_device {int flags; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int IFF_NOARP ; 
 struct sk_buff* FUNC0 (int,int,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ,unsigned char const*,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int type, int ptype, __be32 dest_ip,
			 struct net_device *dev, __be32 src_ip,
			 const unsigned char *dest_hw,
			 const unsigned char *src_hw,
			 const unsigned char *target_hw,
			 struct dst_entry *dst)
{
	struct sk_buff *skb;

	/* arp on this interface. */
	if (dev->flags & IFF_NOARP)
		return;

	skb = FUNC0(type, ptype, dest_ip, dev, src_ip,
			 dest_hw, src_hw, target_hw);
	if (!skb)
		return;

	FUNC3(skb, FUNC2(dst));
	FUNC1(skb);
}