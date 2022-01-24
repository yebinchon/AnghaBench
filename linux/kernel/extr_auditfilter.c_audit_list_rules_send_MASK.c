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
struct task_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct audit_netlink_list {int /*<<< orphan*/  q; int /*<<< orphan*/  portid; int /*<<< orphan*/  net; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  audit_filter_mutex ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audit_send_list ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_netlink_list*) ; 
 struct audit_netlink_list* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC7 (int /*<<< orphan*/ ,struct audit_netlink_list*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct net* FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct sk_buff *request_skb, int seq)
{
	u32 portid = FUNC1(request_skb).portid;
	struct net *net = FUNC12(FUNC1(request_skb).sk);
	struct task_struct *tsk;
	struct audit_netlink_list *dest;
	int err = 0;

	/* We can't just spew out the rules here because we might fill
	 * the available socket buffer space and deadlock waiting for
	 * auditctl to read from it... which isn't ever going to
	 * happen if we're actually running in the context of auditctl
	 * trying to _send_ the stuff */

	dest = FUNC6(sizeof(struct audit_netlink_list), GFP_KERNEL);
	if (!dest)
		return -ENOMEM;
	dest->net = FUNC4(net);
	dest->portid = portid;
	FUNC10(&dest->q);

	FUNC8(&audit_filter_mutex);
	FUNC3(seq, &dest->q);
	FUNC9(&audit_filter_mutex);

	tsk = FUNC7(audit_send_list, dest, "audit_send_list");
	if (FUNC0(tsk)) {
		FUNC11(&dest->q);
		FUNC5(dest);
		err = FUNC2(tsk);
	}

	return err;
}