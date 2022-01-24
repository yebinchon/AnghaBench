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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dn_skb_cb {int /*<<< orphan*/  segnum; int /*<<< orphan*/  nsp_flags; } ;
struct dn_scp {int /*<<< orphan*/  numdat; int /*<<< orphan*/  numoth; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 struct dn_skb_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static __le16 *FUNC6(struct sock *sk, struct sk_buff *skb, int oth)
{
	struct dn_scp *scp = FUNC0(sk);
	struct dn_skb_cb *cb = FUNC1(skb);
	__le16 *ptr = FUNC3(sk, skb, cb->nsp_flags, 11, oth);

	if (FUNC5(oth)) {
		cb->segnum = scp->numoth;
		FUNC4(&scp->numoth, 1);
	} else {
		cb->segnum = scp->numdat;
		FUNC4(&scp->numdat, 1);
	}
	*(ptr++) = FUNC2(cb->segnum);

	return ptr;
}