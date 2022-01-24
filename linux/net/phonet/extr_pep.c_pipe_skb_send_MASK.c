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
struct pnpipehdr {int /*<<< orphan*/  pipe_handle; int /*<<< orphan*/  message_id; scalar_t__ data0; scalar_t__ utid; } ;
struct pep_sock {int /*<<< orphan*/  tx_credits; int /*<<< orphan*/  tx_fc; int /*<<< orphan*/  pipe_handle; scalar_t__ aligned; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  PNS_PIPE_ALIGNED_DATA ; 
 int /*<<< orphan*/  PNS_PIPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct pep_sock* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct pnpipehdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct sk_buff *skb)
{
	struct pep_sock *pn = FUNC3(sk);
	struct pnpipehdr *ph;
	int err;

	if (FUNC4(pn->tx_fc) &&
	    !FUNC0(&pn->tx_credits, -1, 0)) {
		FUNC2(skb);
		return -ENOBUFS;
	}

	FUNC7(skb, 3 + pn->aligned);
	FUNC8(skb);
	ph = FUNC6(skb);
	ph->utid = 0;
	if (pn->aligned) {
		ph->message_id = PNS_PIPE_ALIGNED_DATA;
		ph->data0 = 0; /* padding */
	} else
		ph->message_id = PNS_PIPE_DATA;
	ph->pipe_handle = pn->pipe_handle;
	err = FUNC5(sk, skb, NULL);

	if (err && FUNC4(pn->tx_fc))
		FUNC1(&pn->tx_credits);
	return err;

}