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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
#define  IPPROTO_TCP 131 
#define  IPPROTO_UDP 130 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int FUNC0 (struct sk_buff const*,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (struct sk_buff const*,int,int /*<<< orphan*/ *,int*) ; 

bool
FUNC2(const struct sk_buff *skb, u8 pf, bool src, __be16 *port)
{
	bool ret;
	u8 proto;

	switch (pf) {
	case NFPROTO_IPV4:
		ret = FUNC0(skb, src, port, &proto);
		break;
	case NFPROTO_IPV6:
		ret = FUNC1(skb, src, port, &proto);
		break;
	default:
		return false;
	}
	if (!ret)
		return ret;
	switch (proto) {
	case IPPROTO_TCP:
	case IPPROTO_UDP:
		return true;
	default:
		return false;
	}
}