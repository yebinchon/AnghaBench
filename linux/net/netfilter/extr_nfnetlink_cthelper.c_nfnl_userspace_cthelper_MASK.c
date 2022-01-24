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
struct sk_buff {int dummy; } ;
struct nf_conntrack_helper {int flags; int /*<<< orphan*/  queue_num; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int NF_ACCEPT ; 
 int NF_CT_HELPER_F_CONFIGURED ; 
 int NF_CT_HELPER_F_USERSPACE ; 
 int NF_DROP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NF_VERDICT_FLAG_QUEUE_BYPASS ; 
 struct nf_conn_help* FUNC1 (struct nf_conn*) ; 
 struct nf_conntrack_helper* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct sk_buff *skb, unsigned int protoff,
			struct nf_conn *ct, enum ip_conntrack_info ctinfo)
{
	const struct nf_conn_help *help;
	struct nf_conntrack_helper *helper;

	help = FUNC1(ct);
	if (help == NULL)
		return NF_DROP;

	/* rcu_read_lock()ed by nf_hook_thresh */
	helper = FUNC2(help->helper);
	if (helper == NULL)
		return NF_DROP;

	/* This is a user-space helper not yet configured, skip. */
	if ((helper->flags &
	    (NF_CT_HELPER_F_USERSPACE | NF_CT_HELPER_F_CONFIGURED)) ==
	     NF_CT_HELPER_F_USERSPACE)
		return NF_ACCEPT;

	/* If the user-space helper is not available, don't block traffic. */
	return FUNC0(helper->queue_num) | NF_VERDICT_FLAG_QUEUE_BYPASS;
}