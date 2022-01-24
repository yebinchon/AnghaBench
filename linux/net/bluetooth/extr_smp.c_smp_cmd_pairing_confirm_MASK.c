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
typedef  int u8 ;
struct smp_chan {int /*<<< orphan*/  flags; int /*<<< orphan*/  prnd; int /*<<< orphan*/  pcnf; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct l2cap_conn {TYPE_1__* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct TYPE_2__ {scalar_t__ out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_RANDOM ; 
 int /*<<< orphan*/  SMP_FLAG_CFM_PENDING ; 
 int /*<<< orphan*/  SMP_FLAG_REMOTE_PK ; 
 int /*<<< orphan*/  SMP_FLAG_SC ; 
 int /*<<< orphan*/  SMP_FLAG_TK_VALID ; 
 int SMP_INVALID_PARAMS ; 
 int FUNC3 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int FUNC8 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_conn*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC11(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp = chan->data;

	FUNC0("conn %p %s", conn, conn->hcon->out ? "master" : "slave");

	if (skb->len < sizeof(smp->pcnf))
		return SMP_INVALID_PARAMS;

	FUNC4(smp->pcnf, skb->data, sizeof(smp->pcnf));
	FUNC7(skb, sizeof(smp->pcnf));

	if (FUNC10(SMP_FLAG_SC, &smp->flags)) {
		int ret;

		/* Public Key exchange must happen before any other steps */
		if (FUNC10(SMP_FLAG_REMOTE_PK, &smp->flags))
			return FUNC5(smp);

		FUNC1("Unexpected SMP Pairing Confirm");

		ret = FUNC3(smp);
		if (ret)
			return ret;
	}

	if (conn->hcon->out) {
		FUNC9(conn, SMP_CMD_PAIRING_RANDOM, sizeof(smp->prnd),
			     smp->prnd);
		FUNC2(smp, SMP_CMD_PAIRING_RANDOM);
		return 0;
	}

	if (FUNC10(SMP_FLAG_TK_VALID, &smp->flags))
		return FUNC8(smp);

	FUNC6(SMP_FLAG_CFM_PENDING, &smp->flags);

	return 0;
}