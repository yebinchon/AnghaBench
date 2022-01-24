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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  qos; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_REGIS ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  as_close ; 
 int /*<<< orphan*/  as_reject ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  sigd ; 
 int /*<<< orphan*/  FUNC8 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct atm_vcc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sock* FUNC10 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC14(struct atm_vcc *vcc)
{
	FUNC0(wait);
	struct sk_buff *skb;
	struct sock *sk = FUNC10(vcc);

	FUNC5("%p\n", vcc);
	if (FUNC13(ATM_VF_REGIS, &vcc->flags)) {
		FUNC8(vcc, as_close, NULL, NULL, NULL);
		for (;;) {
			FUNC6(FUNC11(sk), &wait, TASK_UNINTERRUPTIBLE);
			if (FUNC13(ATM_VF_RELEASED, &vcc->flags) || !sigd)
				break;
			FUNC7();
		}
		FUNC4(FUNC11(sk), &wait);
	}
	/* beware - socket is still in use by atmsigd until the last
	   as_indicate has been answered */
	while ((skb = FUNC12(&sk->sk_receive_queue)) != NULL) {
		FUNC1(vcc, skb->truesize);
		FUNC5("LISTEN REL\n");
		FUNC9(NULL, as_reject, vcc, NULL, NULL, &vcc->qos, 0);
		FUNC3(skb);
	}
	FUNC2(ATM_VF_REGIS, &vcc->flags);
	/* ... may retry later */
}