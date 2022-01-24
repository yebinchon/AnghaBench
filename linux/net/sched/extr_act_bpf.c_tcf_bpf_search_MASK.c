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
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bpf_net_id ; 
 struct tc_action_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tc_action_net*,struct tc_action**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net *net, struct tc_action **a, u32 index)
{
	struct tc_action_net *tn = FUNC0(net, bpf_net_id);

	return FUNC1(tn, a, index);
}