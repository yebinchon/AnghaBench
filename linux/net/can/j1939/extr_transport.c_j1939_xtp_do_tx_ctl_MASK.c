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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct j1939_sk_buff_cb {int dummy; } ;
struct j1939_priv {int dummy; } ;
typedef  int pgn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct j1939_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct j1939_sk_buff_cb const*,int) ; 
 struct sk_buff* FUNC4 (struct j1939_priv*,struct j1939_sk_buff_cb const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const*,int) ; 
 int* FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC7(struct j1939_priv *priv,
			       const struct j1939_sk_buff_cb *re_skcb,
			       bool swap_src_dst, pgn_t pgn, const u8 *dat)
{
	struct sk_buff *skb;
	u8 *skdat;

	if (!FUNC3(re_skcb, swap_src_dst))
		return 0;

	skb = FUNC4(priv, re_skcb, true, swap_src_dst);
	if (FUNC0(skb))
		return FUNC1(skb);

	skdat = FUNC6(skb, 8);
	FUNC5(skdat, dat, 5);
	skdat[5] = (pgn >> 0);
	skdat[6] = (pgn >> 8);
	skdat[7] = (pgn >> 16);

	return FUNC2(priv, skb);
}