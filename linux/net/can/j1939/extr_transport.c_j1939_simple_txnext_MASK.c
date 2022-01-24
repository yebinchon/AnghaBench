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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct j1939_session {struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  J1939_ERRQUEUE_SCHED ; 
 int /*<<< orphan*/  J1939_SIMPLE_ECHO_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct j1939_priv*,struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct j1939_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct j1939_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct j1939_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct j1939_session*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct j1939_session *session)
{
	struct j1939_priv *priv = session->priv;
	struct sk_buff *se_skb = FUNC2(session);
	struct sk_buff *skb;
	int ret;

	if (!se_skb)
		return 0;

	skb = FUNC6(se_skb, GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	FUNC0(skb, se_skb->sk);

	FUNC5(session, J1939_SIMPLE_ECHO_TIMEOUT_MS);

	ret = FUNC1(priv, skb);
	if (ret)
		return ret;

	FUNC3(session, J1939_ERRQUEUE_SCHED);
	FUNC4(session);

	return 0;
}