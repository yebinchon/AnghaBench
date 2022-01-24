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
struct smp_cmd_encrypt_info {int /*<<< orphan*/  ltk; } ;
struct smp_chan {int /*<<< orphan*/  tk; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CMD_MASTER_IDENT ; 
 int SMP_INVALID_PARAMS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct smp_cmd_encrypt_info *rp = (void *) skb->data;
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp = chan->data;

	FUNC0("conn %p", conn);

	if (skb->len < sizeof(*rp))
		return SMP_INVALID_PARAMS;

	FUNC1(smp, SMP_CMD_MASTER_IDENT);

	FUNC3(skb, sizeof(*rp));

	FUNC2(smp->tk, rp->ltk, sizeof(smp->tk));

	return 0;
}