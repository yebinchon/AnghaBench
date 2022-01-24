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
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct TYPE_3__ {scalar_t__ optlen; } ;
struct TYPE_4__ {TYPE_1__ opt; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IP_RECVOPTS ; 
 int /*<<< orphan*/  SOL_IP ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct msghdr *msg, struct sk_buff *skb)
{
	if (FUNC0(skb)->opt.optlen == 0)
		return;

	FUNC2(msg, SOL_IP, IP_RECVOPTS, FUNC0(skb)->opt.optlen,
		 FUNC1(skb) + 1);
}