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
struct smp_cmd_ident_info {int /*<<< orphan*/  irk; } ;
struct smp_chan {int /*<<< orphan*/  irk; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CMD_IDENT_ADDR_INFO ; 
 int SMP_INVALID_PARAMS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct smp_cmd_ident_info *info = (void *) skb->data;
	struct l2cap_chan *chan = conn->smp;
	struct smp_chan *smp = chan->data;

	FUNC0("");

	if (skb->len < sizeof(*info))
		return SMP_INVALID_PARAMS;

	FUNC1(smp, SMP_CMD_IDENT_ADDR_INFO);

	FUNC3(skb, sizeof(*info));

	FUNC2(smp->irk, info->irk, 16);

	return 0;
}