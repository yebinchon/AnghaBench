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
struct smp_csrk {int /*<<< orphan*/  val; int /*<<< orphan*/  type; } ;
struct smp_cmd_sign_info {int /*<<< orphan*/  csrk; } ;
struct smp_chan {struct smp_csrk* csrk; int /*<<< orphan*/  remote_key_dist; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {TYPE_1__* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct TYPE_2__ {scalar_t__ sec_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 scalar_t__ BT_SECURITY_MEDIUM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MGMT_CSRK_REMOTE_AUTHENTICATED ; 
 int /*<<< orphan*/  MGMT_CSRK_REMOTE_UNAUTHENTICATED ; 
 int /*<<< orphan*/  SMP_DIST_SIGN ; 
 int SMP_INVALID_PARAMS ; 
 struct smp_csrk* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct smp_chan*) ; 

__attribute__((used)) static int FUNC5(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct smp_cmd_sign_info *rp = (void *) skb->data;
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp = chan->data;
	struct smp_csrk *csrk;

	FUNC0("conn %p", conn);

	if (skb->len < sizeof(*rp))
		return SMP_INVALID_PARAMS;

	/* Mark the information as received */
	smp->remote_key_dist &= ~SMP_DIST_SIGN;

	FUNC3(skb, sizeof(*rp));

	csrk = FUNC1(sizeof(*csrk), GFP_KERNEL);
	if (csrk) {
		if (conn->hcon->sec_level > BT_SECURITY_MEDIUM)
			csrk->type = MGMT_CSRK_REMOTE_AUTHENTICATED;
		else
			csrk->type = MGMT_CSRK_REMOTE_UNAUTHENTICATED;
		FUNC2(csrk->val, rp->csrk, sizeof(csrk->val));
	}
	smp->csrk = csrk;
	FUNC4(smp);

	return 0;
}