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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ssap; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 

void FUNC1(struct sk_buff *skb, u8 pdu_type)
{
	FUNC0(skb)->ssap |= pdu_type;
}