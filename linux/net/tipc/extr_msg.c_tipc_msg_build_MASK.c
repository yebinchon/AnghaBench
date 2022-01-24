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
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {char* data; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int FB_MTU ; 
 int /*<<< orphan*/  FIRST_FRAGMENT ; 
 int /*<<< orphan*/  FRAGMENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_H_SIZE ; 
 int /*<<< orphan*/  LAST_FRAGMENT ; 
 int MAX_MSG_SIZE ; 
 int /*<<< orphan*/  MSG_FRAGMENTER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*) ; 
 int FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int,struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 struct sk_buff* FUNC17 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int) ; 

int FUNC21(struct tipc_msg *mhdr, struct msghdr *m, int offset,
		   int dsz, int pktmax, struct sk_buff_head *list)
{
	int mhsz = FUNC7(mhdr);
	struct tipc_msg pkthdr;
	int msz = mhsz + dsz;
	int pktrem = pktmax;
	struct sk_buff *skb;
	int drem = dsz;
	int pktno = 1;
	char *pktpos;
	int pktsz;
	int rc;

	FUNC12(mhdr, msz);

	/* No fragmentation needed? */
	if (FUNC5(msz <= pktmax)) {
		skb = FUNC17(msz, GFP_KERNEL);

		/* Fall back to smaller MTU if node local message */
		if (FUNC20(!skb)) {
			if (pktmax != MAX_MSG_SIZE)
				return -ENOMEM;
			rc = FUNC21(mhdr, m, offset, dsz, FB_MTU, list);
			if (rc != dsz)
				return rc;
			if (FUNC18(list))
				return dsz;
			return -ENOMEM;
		}
		FUNC16(skb);
		FUNC2(list, skb);
		FUNC14(skb, mhdr, mhsz);
		pktpos = skb->data + mhsz;
		if (FUNC4(pktpos, dsz, &m->msg_iter))
			return dsz;
		rc = -EFAULT;
		goto error;
	}

	/* Prepare reusable fragment header */
	FUNC19(FUNC9(mhdr), &pkthdr, MSG_FRAGMENTER,
		      FIRST_FRAGMENT, INT_H_SIZE, FUNC6(mhdr));
	FUNC12(&pkthdr, pktmax);
	FUNC10(&pkthdr, pktno);
	FUNC11(&pkthdr, FUNC8(mhdr));

	/* Prepare first fragment */
	skb = FUNC17(pktmax, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;
	FUNC16(skb);
	FUNC2(list, skb);
	pktpos = skb->data;
	FUNC14(skb, &pkthdr, INT_H_SIZE);
	pktpos += INT_H_SIZE;
	pktrem -= INT_H_SIZE;
	FUNC15(skb, INT_H_SIZE, mhdr, mhsz);
	pktpos += mhsz;
	pktrem -= mhsz;

	do {
		if (drem < pktrem)
			pktrem = drem;

		if (!FUNC4(pktpos, pktrem, &m->msg_iter)) {
			rc = -EFAULT;
			goto error;
		}
		drem -= pktrem;

		if (!drem)
			break;

		/* Prepare new fragment: */
		if (drem < (pktmax - INT_H_SIZE))
			pktsz = drem + INT_H_SIZE;
		else
			pktsz = pktmax;
		skb = FUNC17(pktsz, GFP_KERNEL);
		if (!skb) {
			rc = -ENOMEM;
			goto error;
		}
		FUNC16(skb);
		FUNC2(list, skb);
		FUNC13(&pkthdr, FRAGMENT);
		FUNC12(&pkthdr, pktsz);
		FUNC10(&pkthdr, ++pktno);
		FUNC14(skb, &pkthdr, INT_H_SIZE);
		pktpos = skb->data + INT_H_SIZE;
		pktrem = pktsz - INT_H_SIZE;

	} while (1);
	FUNC13(FUNC3(skb), LAST_FRAGMENT);
	return dsz;
error:
	FUNC1(list);
	FUNC0(list);
	return rc;
}