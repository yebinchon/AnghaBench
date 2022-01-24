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
struct xt_cgroup_info_v1 {int invert_path; scalar_t__ classid; int invert_classid; struct cgroup* priv; } ;
struct xt_action_param {struct xt_cgroup_info_v1* matchinfo; } ;
struct sock_cgroup_data {int dummy; } ;
struct sock {struct sock_cgroup_data sk_cgrp_data; } ;
struct sk_buff {struct sock* sk; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock_cgroup_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock_cgroup_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct xt_action_param*) ; 

__attribute__((used)) static bool FUNC7(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct xt_cgroup_info_v1 *info = par->matchinfo;
	struct sock_cgroup_data *skcd = &skb->sk->sk_cgrp_data;
	struct cgroup *ancestor = info->priv;
	struct sock *sk = skb->sk;

	if (!sk || !FUNC2(sk) || !FUNC1(FUNC6(par), FUNC5(sk)))
		return false;

	if (ancestor)
		return FUNC0(FUNC4(skcd), ancestor) ^
			info->invert_path;
	else
		return (info->classid == FUNC3(skcd)) ^
			info->invert_classid;
}