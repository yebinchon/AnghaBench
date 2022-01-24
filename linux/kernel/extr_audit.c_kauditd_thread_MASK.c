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
struct sock {int dummy; } ;
struct net {int dummy; } ;
struct auditd_connection {int /*<<< orphan*/  portid; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int UNICAST_RETRIES ; 
 int /*<<< orphan*/  audit_backlog_wait ; 
 struct sock* FUNC0 (struct net*) ; 
 int /*<<< orphan*/  audit_hold_queue ; 
 int /*<<< orphan*/  audit_queue ; 
 int /*<<< orphan*/  audit_retry_queue ; 
 int /*<<< orphan*/  auditd_conn ; 
 int /*<<< orphan*/  FUNC1 (struct auditd_connection*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kauditd_hold_skb ; 
 int /*<<< orphan*/  kauditd_rehold_skb ; 
 int /*<<< orphan*/  kauditd_retry_skb ; 
 int /*<<< orphan*/ * kauditd_send_multicast_skb ; 
 int FUNC3 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kauditd_wait ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 
 struct auditd_connection* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(void *dummy)
{
	int rc;
	u32 portid = 0;
	struct net *net = NULL;
	struct sock *sk = NULL;
	struct auditd_connection *ac;

#define UNICAST_RETRIES 5

	FUNC9();
	while (!FUNC4()) {
		/* NOTE: see the lock comments in auditd_send_unicast_skb() */
		FUNC7();
		ac = FUNC6(auditd_conn);
		if (!ac) {
			FUNC8();
			goto main_queue;
		}
		net = FUNC2(ac->net);
		sk = FUNC0(net);
		portid = ac->portid;
		FUNC8();

		/* attempt to flush the hold queue */
		rc = FUNC3(sk, portid,
					&audit_hold_queue, UNICAST_RETRIES,
					NULL, kauditd_rehold_skb);
		if (ac && rc < 0) {
			sk = NULL;
			FUNC1(ac);
			goto main_queue;
		}

		/* attempt to flush the retry queue */
		rc = FUNC3(sk, portid,
					&audit_retry_queue, UNICAST_RETRIES,
					NULL, kauditd_hold_skb);
		if (ac && rc < 0) {
			sk = NULL;
			FUNC1(ac);
			goto main_queue;
		}

main_queue:
		/* process the main queue - do the multicast send and attempt
		 * unicast, dump failed record sends to the retry queue; if
		 * sk == NULL due to previous failures we will just do the
		 * multicast send and move the record to the hold queue */
		rc = FUNC3(sk, portid, &audit_queue, 1,
					kauditd_send_multicast_skb,
					(sk ?
					 kauditd_retry_skb : kauditd_hold_skb));
		if (ac && rc < 0)
			FUNC1(ac);
		sk = NULL;

		/* drop our netns reference, no auditd sends past this line */
		if (net) {
			FUNC5(net);
			net = NULL;
		}

		/* we have processed all the queues so wake everyone */
		FUNC12(&audit_backlog_wait);

		/* NOTE: we want to wake up if there is anything on the queue,
		 *       regardless of if an auditd is connected, as we need to
		 *       do the multicast send and rotate records from the
		 *       main queue to the retry/hold queues */
		FUNC11(kauditd_wait,
				     (FUNC10(&audit_queue) ? 1 : 0));
	}

	return 0;
}