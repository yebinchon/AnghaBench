#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct sk_buff const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct sk_buff const*) ; 

__attribute__((used)) static inline bool
FUNC5(const struct sk_buff *skb, u_int8_t family)
{
	bool is_multicast = false;

	switch(family) {
	case NFPROTO_IPV4:
		is_multicast = FUNC2(FUNC1(skb)->daddr);
		break;
	case NFPROTO_IPV6:
		is_multicast = FUNC3(&FUNC4(skb)->daddr);
		break;
	default:
		FUNC0(1);
		break;
	}
	return is_multicast;
}