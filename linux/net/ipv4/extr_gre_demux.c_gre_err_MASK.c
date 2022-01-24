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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int* data; } ;
struct iphdr {int ihl; } ;
struct gre_protocol {int /*<<< orphan*/  (* err_handler ) (struct sk_buff*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 size_t GREPROTO_MAX ; 
 int /*<<< orphan*/ * gre_proto ; 
 struct gre_protocol* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, u32 info)
{
	const struct gre_protocol *proto;
	const struct iphdr *iph = (const struct iphdr *)skb->data;
	u8 ver = skb->data[(iph->ihl<<2) + 1]&0x7f;
	int err = 0;

	if (ver >= GREPROTO_MAX)
		return -EINVAL;

	FUNC1();
	proto = FUNC0(gre_proto[ver]);
	if (proto && proto->err_handler)
		proto->err_handler(skb, info);
	else
		err = -EPROTONOSUPPORT;
	FUNC2();

	return err;
}