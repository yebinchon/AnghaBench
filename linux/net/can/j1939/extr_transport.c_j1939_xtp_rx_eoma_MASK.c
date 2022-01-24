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
struct j1939_sk_buff_cb {int /*<<< orphan*/  addr; } ;
struct j1939_session {int dummy; } ;
struct j1939_priv {int dummy; } ;

/* Variables and functions */
 struct j1939_session* FUNC0 (struct j1939_priv*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_session*) ; 
 struct j1939_sk_buff_cb* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct j1939_session*,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC4(struct j1939_priv *priv, struct sk_buff *skb,
		  bool transmitter)
{
	struct j1939_sk_buff_cb *skcb = FUNC2(skb);
	struct j1939_session *session;

	session = FUNC0(priv, &skcb->addr, true,
					    transmitter);
	if (!session)
		return;

	FUNC3(session, skb);
	FUNC1(session);
}