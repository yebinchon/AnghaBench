#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dn_scp {int /*<<< orphan*/  persist_fxn; int /*<<< orphan*/  persist; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int nsp_flags; } ;

/* Variables and functions */
 scalar_t__ DN_MAX_NSP_DATA_HEADER ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (struct sock*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dn_nsp_xmit_timeout ; 
 unsigned char* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 

void FUNC7(struct sock *sk, unsigned char lsflags, char fcval)
{
	struct dn_scp *scp = FUNC0(sk);
	struct sk_buff *skb;
	unsigned char *ptr;
	gfp_t gfp = GFP_ATOMIC;

	if ((skb = FUNC2(sk, DN_MAX_NSP_DATA_HEADER + 2, gfp)) == NULL)
		return;

	FUNC6(skb, DN_MAX_NSP_DATA_HEADER);
	ptr = FUNC5(skb, 2);
	FUNC1(skb)->nsp_flags = 0x10;
	*ptr++ = lsflags;
	*ptr = fcval;

	FUNC4(sk, skb, gfp, 1);

	scp->persist = FUNC3(sk);
	scp->persist_fxn = dn_nsp_xmit_timeout;
}