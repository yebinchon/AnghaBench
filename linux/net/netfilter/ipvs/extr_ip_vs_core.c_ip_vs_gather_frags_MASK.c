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
struct sk_buff {int dummy; } ;
struct netns_ipvs {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline int FUNC5(struct netns_ipvs *ipvs,
				     struct sk_buff *skb, u_int32_t user)
{
	int err;

	FUNC3();
	err = FUNC0(ipvs->net, skb, user);
	FUNC4();
	if (!err)
		FUNC2(FUNC1(skb));

	return err;
}