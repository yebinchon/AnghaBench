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
struct TYPE_3__ {scalar_t__ tpid; scalar_t__ tci; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct sw_flow_key {TYPE_2__ eth; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sw_flow_key*) ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct sw_flow_key *key)
{
	int err;

	err = FUNC1(skb);
	if (FUNC2(skb)) {
		FUNC0(key);
	} else {
		key->eth.vlan.tci = 0;
		key->eth.vlan.tpid = 0;
	}
	return err;
}