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
typedef  size_t u8 ;
struct sk_buff {int* data; } ;
struct gre_protocol {int (* handler ) (struct sk_buff*) ;} ;

/* Variables and functions */
 size_t GREPROTO_MAX ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/ * gre_proto ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct gre_protocol* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	const struct gre_protocol *proto;
	u8 ver;
	int ret;

	if (!FUNC1(skb, 12))
		goto drop;

	ver = skb->data[1]&0x7f;
	if (ver >= GREPROTO_MAX)
		goto drop;

	FUNC3();
	proto = FUNC2(gre_proto[ver]);
	if (!proto || !proto->handler)
		goto drop_unlock;
	ret = proto->handler(skb);
	FUNC4();
	return ret;

drop_unlock:
	FUNC4();
drop:
	FUNC0(skb);
	return NET_RX_DROP;
}