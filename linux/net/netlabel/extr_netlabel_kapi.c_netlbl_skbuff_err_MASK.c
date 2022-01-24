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
typedef  int u16 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
#define  AF_INET 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

void FUNC2(struct sk_buff *skb, u16 family, int error, int gateway)
{
	switch (family) {
	case AF_INET:
		if (FUNC1(skb))
			FUNC0(skb, error, gateway);
		break;
	}
}