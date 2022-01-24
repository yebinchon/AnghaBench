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
struct igmphdr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  ip_mc_validate_checksum ; 
 unsigned int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	unsigned int len = FUNC4(skb) + sizeof(struct igmphdr);
	unsigned int transport_len = FUNC1(skb);
	struct sk_buff *skb_chk;

	if (!FUNC0(skb, len))
		return -EINVAL;

	skb_chk = FUNC3(skb, transport_len,
				       ip_mc_validate_checksum);
	if (!skb_chk)
		return -EINVAL;

	if (skb_chk != skb)
		FUNC2(skb_chk);

	return 0;
}