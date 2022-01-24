#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct sk_buff *skb, int type,
					  void *data, u8 icmp6_type)
{
	FUNC0(skb, type, data, skb->dev->addr_len,
				 FUNC1(skb->dev->type));
	FUNC2(skb->dev, skb, icmp6_type);
}