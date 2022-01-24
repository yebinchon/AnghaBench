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
typedef  struct auditd_connection {int /*<<< orphan*/  rcu; } const auditd_connection ;

/* Variables and functions */
 int /*<<< orphan*/  audit_retry_queue ; 
 int /*<<< orphan*/  auditd_conn ; 
 int /*<<< orphan*/  auditd_conn_free ; 
 int /*<<< orphan*/  auditd_conn_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct auditd_connection const* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(const struct auditd_connection *ac)
{
	unsigned long flags;
	struct sk_buff *skb;
	struct auditd_connection *ac_old;

	/* if it isn't already broken, break the connection */
	FUNC6(&auditd_conn_lock, flags);
	ac_old = FUNC4(auditd_conn,
					   FUNC2(&auditd_conn_lock));
	if (ac && ac != ac_old) {
		/* someone already registered a new auditd connection */
		FUNC7(&auditd_conn_lock, flags);
		return;
	}
	FUNC3(auditd_conn, NULL);
	FUNC7(&auditd_conn_lock, flags);

	if (ac_old)
		FUNC0(&ac_old->rcu, auditd_conn_free);

	/* flush the retry queue to the hold queue, but don't touch the main
	 * queue since we need to process that normally for multicast */
	while ((skb = FUNC5(&audit_retry_queue)))
		FUNC1(skb);
}