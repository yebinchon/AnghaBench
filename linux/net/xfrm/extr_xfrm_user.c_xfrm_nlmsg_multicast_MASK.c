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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int EPIPE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct sock* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct net *net, struct sk_buff *skb,
				       u32 pid, unsigned int group)
{
	struct sock *nlsk = FUNC2(net->xfrm.nlsk);

	if (!nlsk) {
		FUNC0(skb);
		return -EPIPE;
	}

	return FUNC1(nlsk, skb, pid, group, GFP_ATOMIC);
}