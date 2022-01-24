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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__* data; } ;
struct j1939_sk_buff_cb {int /*<<< orphan*/  addr; } ;
struct j1939_session {int /*<<< orphan*/  transmission; scalar_t__ last_cmd; } ;
struct j1939_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ J1939_TP_CMD_BAM ; 
 struct j1939_session* FUNC0 (struct j1939_priv*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct j1939_session*) ; 
 struct j1939_sk_buff_cb* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct j1939_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct j1939_session*,int) ; 
 scalar_t__ FUNC6 (struct j1939_session*,struct sk_buff*) ; 
 struct j1939_session* FUNC7 (struct j1939_priv*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct j1939_priv *priv, struct sk_buff *skb,
			     bool transmitter)
{
	struct j1939_sk_buff_cb *skcb = FUNC3(skb);
	struct j1939_session *session;
	u8 cmd = skb->data[0];

	session = FUNC0(priv, &skcb->addr, false,
					    transmitter);

	if (!session) {
		if (transmitter) {
			/* If we're the transmitter and this function is called,
			 * we received our own RTS. A session has already been
			 * created.
			 *
			 * For some reasons however it might have been destroyed
			 * already. So don't create a new one here (using
			 * "j1939_xtp_rx_rts_session_new()") as this will be a
			 * receiver session.
			 *
			 * The reasons the session is already destroyed might
			 * be:
			 * - user space closed socket was and the session was
			 *   aborted
			 * - session was aborted due to external abort message
			 */
			return;
		}
		session = FUNC7(priv, skb);
		if (!session)
			return;
	} else {
		if (FUNC6(session, skb)) {
			FUNC1(session);
			return;
		}
	}
	session->last_cmd = cmd;

	FUNC5(session, 1250);

	if (cmd != J1939_TP_CMD_BAM && !session->transmission) {
		FUNC2(session);
		FUNC4(session, 0);
	}

	FUNC1(session);
}