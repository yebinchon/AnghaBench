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
struct sk_buff {char* data; int /*<<< orphan*/  truesize; } ;
struct pppoatm_vcc {int flags; int encaps; int /*<<< orphan*/  blocked; struct atm_vcc* atmvcc; } ;
struct ppp_channel {int dummy; } ;
struct atm_vcc {scalar_t__ (* send ) (struct atm_vcc*,struct sk_buff*) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct atm_vcc* vcc; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  ATM_VF_CLOSE ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  BLOCKED ; 
 int DROP_PACKET ; 
 int LLC_LEN ; 
 int SC_COMP_PROT ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pppoatm_vcc* FUNC4 (struct ppp_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
#define  e_autodetect 130 
#define  e_llc 129 
#define  e_vc 128 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pppllc ; 
 int /*<<< orphan*/  FUNC8 (struct pppoatm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct atm_vcc*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct ppp_channel *chan, struct sk_buff *skb)
{
	struct pppoatm_vcc *pvcc = FUNC4(chan);
	struct atm_vcc *vcc;
	int ret;

	FUNC0(skb)->vcc = pvcc->atmvcc;
	FUNC9("(skb=0x%p, vcc=0x%p)\n", skb, pvcc->atmvcc);
	if (skb->data[0] == '\0' && (pvcc->flags & SC_COMP_PROT))
		(void) FUNC12(skb, 1);

	vcc = FUNC0(skb)->vcc;
	FUNC2(FUNC10(vcc));
	if (FUNC15(FUNC10(vcc))) {
		/*
		 * Needs to happen (and be flushed, hence test_and_) before we unlock
		 * the socket. It needs to be seen by the time our ->release_cb gets
		 * called.
		 */
		FUNC17(BLOCKED, &pvcc->blocked);
		goto nospace;
	}
	if (FUNC18(ATM_VF_RELEASED, &vcc->flags) ||
	    FUNC18(ATM_VF_CLOSE, &vcc->flags) ||
	    !FUNC18(ATM_VF_READY, &vcc->flags)) {
		FUNC3(FUNC10(vcc));
		FUNC6(skb);
		return DROP_PACKET;
	}

	switch (pvcc->encaps) {		/* LLC encapsulation needed */
	case e_llc:
		if (FUNC11(skb) < LLC_LEN) {
			struct sk_buff *n;
			n = FUNC14(skb, LLC_LEN);
			if (n != NULL &&
			    !FUNC8(pvcc, n->truesize)) {
				FUNC6(n);
				goto nospace;
			}
			FUNC5(skb);
			skb = n;
			if (skb == NULL) {
				FUNC3(FUNC10(vcc));
				return DROP_PACKET;
			}
		} else if (!FUNC8(pvcc, skb->truesize))
			goto nospace;
		FUNC7(FUNC13(skb, LLC_LEN), pppllc, LLC_LEN);
		break;
	case e_vc:
		if (!FUNC8(pvcc, skb->truesize))
			goto nospace;
		break;
	case e_autodetect:
		FUNC3(FUNC10(vcc));
		FUNC9("Trying to send without setting encaps!\n");
		FUNC6(skb);
		return 1;
	}

	FUNC1(vcc, skb);
	FUNC9("atm_skb(%p)->vcc(%p)->dev(%p)\n",
		 skb, FUNC0(skb)->vcc, FUNC0(skb)->vcc->dev);
	ret = FUNC0(skb)->vcc->send(FUNC0(skb)->vcc, skb)
	    ? DROP_PACKET : 1;
	FUNC3(FUNC10(vcc));
	return ret;
nospace:
	FUNC3(FUNC10(vcc));
	/*
	 * We don't have space to send this SKB now, but we might have
	 * already applied SC_COMP_PROT compression, so may need to undo
	 */
	if ((pvcc->flags & SC_COMP_PROT) && FUNC11(skb) > 0 &&
	    skb->data[-1] == '\0')
		(void) FUNC13(skb, 1);
	return 0;
}