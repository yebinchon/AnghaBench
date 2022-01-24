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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct j1939_session {int /*<<< orphan*/  skcb; struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct j1939_priv*,struct sk_buff*) ; 
 scalar_t__ j1939_tp_padding ; 
 struct sk_buff* FUNC3 (struct j1939_priv*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC7(struct j1939_session *session,
			   const u8 *dat, int len)
{
	struct j1939_priv *priv = session->priv;
	struct sk_buff *skb;

	skb = FUNC3(priv, &session->skcb,
				  false, false);
	if (FUNC0(skb))
		return FUNC1(skb);

	FUNC6(skb, dat, len);
	if (j1939_tp_padding && len < 8)
		FUNC4(FUNC5(skb, 8 - len), 0xff, 8 - len);

	return FUNC2(priv, skb);
}