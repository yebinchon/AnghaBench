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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfrm_cfg_mutex; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfrm_user_rcv_msg ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb)
{
	struct net *net = FUNC3(skb->sk);

	FUNC0(&net->xfrm.xfrm_cfg_mutex);
	FUNC2(skb, &xfrm_user_rcv_msg);
	FUNC1(&net->xfrm.xfrm_cfg_mutex);
}