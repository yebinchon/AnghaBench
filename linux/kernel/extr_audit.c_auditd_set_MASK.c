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
struct pid {int dummy; } ;
struct net {int dummy; } ;
struct auditd_connection {int /*<<< orphan*/  rcu; int /*<<< orphan*/  net; int /*<<< orphan*/  portid; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  auditd_conn ; 
 int /*<<< orphan*/  auditd_conn_free ; 
 int /*<<< orphan*/  auditd_conn_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct pid*) ; 
 struct auditd_connection* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct auditd_connection*) ; 
 struct auditd_connection* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct pid *pid, u32 portid, struct net *net)
{
	unsigned long flags;
	struct auditd_connection *ac_old, *ac_new;

	if (!pid || !net)
		return -EINVAL;

	ac_new = FUNC3(sizeof(*ac_new), GFP_KERNEL);
	if (!ac_new)
		return -ENOMEM;
	ac_new->pid = FUNC2(pid);
	ac_new->portid = portid;
	ac_new->net = FUNC1(net);

	FUNC7(&auditd_conn_lock, flags);
	ac_old = FUNC6(auditd_conn,
					   FUNC4(&auditd_conn_lock));
	FUNC5(auditd_conn, ac_new);
	FUNC8(&auditd_conn_lock, flags);

	if (ac_old)
		FUNC0(&ac_old->rcu, auditd_conn_free);

	return 0;
}