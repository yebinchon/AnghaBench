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
typedef  int /*<<< orphan*/  u32 ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct datapath*,struct sk_buff*,struct sw_flow_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const*) ; 
 int FUNC4 (struct sk_buff*,struct sw_flow_key*) ; 

__attribute__((used)) static int FUNC5(struct datapath *dp, struct sk_buff *skb,
			  struct sw_flow_key *key,
			  const struct nlattr *a, bool last)
{
	u32 recirc_id;

	if (!FUNC2(key)) {
		int err;

		err = FUNC4(skb, key);
		if (err)
			return err;
	}
	FUNC0(!FUNC2(key));

	recirc_id = FUNC3(a);
	return FUNC1(dp, skb, key, recirc_id, NULL, 0, last, true);
}