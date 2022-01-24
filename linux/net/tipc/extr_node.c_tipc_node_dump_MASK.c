#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
struct tipc_node {TYPE_2__ bc_entry; TYPE_1__* links; int /*<<< orphan*/  keepalive_intv; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  working_links; int /*<<< orphan*/  link_cnt; int /*<<< orphan*/  sync_point; int /*<<< orphan*/  failover_sent; int /*<<< orphan*/  action_flags; int /*<<< orphan*/ * active_links; int /*<<< orphan*/  state; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  inputq; int /*<<< orphan*/  link; int /*<<< orphan*/  maddr; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 size_t NODE_LMAX ; 
 size_t NODE_LMIN ; 
 int /*<<< orphan*/  TIPC_DUMP_NONE ; 
 scalar_t__ FUNC0 (char*,size_t,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC3 (char*,size_t,int /*<<< orphan*/ *) ; 

int FUNC4(struct tipc_node *n, bool more, char *buf)
{
	int i = 0;
	size_t sz = (more) ? NODE_LMAX : NODE_LMIN;

	if (!n) {
		i += FUNC0(buf, sz, "node data: (null)\n");
		return i;
	}

	i += FUNC0(buf, sz, "node data: %x", n->addr);
	i += FUNC0(buf + i, sz - i, " %x", n->state);
	i += FUNC0(buf + i, sz - i, " %d", n->active_links[0]);
	i += FUNC0(buf + i, sz - i, " %d", n->active_links[1]);
	i += FUNC0(buf + i, sz - i, " %x", n->action_flags);
	i += FUNC0(buf + i, sz - i, " %u", n->failover_sent);
	i += FUNC0(buf + i, sz - i, " %u", n->sync_point);
	i += FUNC0(buf + i, sz - i, " %d", n->link_cnt);
	i += FUNC0(buf + i, sz - i, " %u", n->working_links);
	i += FUNC0(buf + i, sz - i, " %x", n->capabilities);
	i += FUNC0(buf + i, sz - i, " %lu\n", n->keepalive_intv);

	if (!more)
		return i;

	i += FUNC0(buf + i, sz - i, "link_entry[0]:\n");
	i += FUNC0(buf + i, sz - i, " mtu: %u\n", n->links[0].mtu);
	i += FUNC0(buf + i, sz - i, " media: ");
	i += FUNC3(buf + i, sz - i, &n->links[0].maddr);
	i += FUNC0(buf + i, sz - i, "\n");
	i += FUNC1(n->links[0].link, TIPC_DUMP_NONE, buf + i);
	i += FUNC0(buf + i, sz - i, " inputq: ");
	i += FUNC2(&n->links[0].inputq, false, buf + i);

	i += FUNC0(buf + i, sz - i, "link_entry[1]:\n");
	i += FUNC0(buf + i, sz - i, " mtu: %u\n", n->links[1].mtu);
	i += FUNC0(buf + i, sz - i, " media: ");
	i += FUNC3(buf + i, sz - i, &n->links[1].maddr);
	i += FUNC0(buf + i, sz - i, "\n");
	i += FUNC1(n->links[1].link, TIPC_DUMP_NONE, buf + i);
	i += FUNC0(buf + i, sz - i, " inputq: ");
	i += FUNC2(&n->links[1].inputq, false, buf + i);

	i += FUNC0(buf + i, sz - i, "bclink:\n ");
	i += FUNC1(n->bc_entry.link, TIPC_DUMP_NONE, buf + i);

	return i;
}