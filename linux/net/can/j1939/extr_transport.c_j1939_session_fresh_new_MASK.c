#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_1__* dev; } ;
struct j1939_sk_buff_cb {int dummy; } ;
struct j1939_session {int dummy; } ;
struct j1939_priv {TYPE_1__* ndev; } ;
struct can_skb_priv {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct j1939_session* FUNC3 (struct j1939_priv*,struct sk_buff*,int) ; 
 struct j1939_sk_buff_cb* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct j1939_sk_buff_cb*,struct j1939_sk_buff_cb const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct
j1939_session *FUNC9(struct j1939_priv *priv,
				       int size,
				       const struct j1939_sk_buff_cb *rel_skcb)
{
	struct sk_buff *skb;
	struct j1939_sk_buff_cb *skcb;
	struct j1939_session *session;

	skb = FUNC0(size + sizeof(struct can_skb_priv), GFP_ATOMIC);
	if (FUNC8(!skb))
		return NULL;

	skb->dev = priv->ndev;
	FUNC2(skb);
	FUNC1(skb)->ifindex = priv->ndev->ifindex;
	skcb = FUNC4(skb);
	FUNC6(skcb, rel_skcb, sizeof(*skcb));

	session = FUNC3(priv, skb, size);
	if (!session) {
		FUNC5(skb);
		return NULL;
	}

	/* alloc data area */
	FUNC7(skb, size);
	/* skb is recounted in j1939_session_new() */
	return session;
}