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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sk_buff {int ignore_df; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct net *net, struct sk_buff *skb,
				   u_int32_t user)
{
	int err;

	FUNC1();
	err = FUNC0(net, skb, user);
	FUNC2();

	if (!err)
		skb->ignore_df = 1;

	return err;
}