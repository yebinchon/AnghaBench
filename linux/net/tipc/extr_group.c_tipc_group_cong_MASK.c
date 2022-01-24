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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_member {int window; int advertised; int state; } ;
struct tipc_group {int* open; int /*<<< orphan*/  net; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 int ADV_ACTIVE ; 
 int ADV_IDLE ; 
 int /*<<< orphan*/  GRP_ADV_MSG ; 
 int MBR_ACTIVE ; 
 int MBR_JOINED ; 
 int MBR_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 struct tipc_member* FUNC1 (struct tipc_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_member*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_group*,struct tipc_member*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff_head*) ; 

bool FUNC5(struct tipc_group *grp, u32 dnode, u32 dport,
		     int len, struct tipc_member **mbr)
{
	struct sk_buff_head xmitq;
	struct tipc_member *m;
	int adv, state;

	m = FUNC1(grp, dnode, dport);
	if (!FUNC2(m)) {
		*mbr = NULL;
		return false;
	}
	*mbr = m;

	if (m->window >= len)
		return false;

	*grp->open = false;

	/* If not fully advertised, do it now to prevent mutual blocking */
	adv = m->advertised;
	state = m->state;
	if (state == MBR_JOINED && adv == ADV_IDLE)
		return true;
	if (state == MBR_ACTIVE && adv == ADV_ACTIVE)
		return true;
	if (state == MBR_PENDING && adv == ADV_IDLE)
		return true;
	FUNC0(&xmitq);
	FUNC3(grp, m, GRP_ADV_MSG, &xmitq);
	FUNC4(grp->net, &xmitq);
	return true;
}