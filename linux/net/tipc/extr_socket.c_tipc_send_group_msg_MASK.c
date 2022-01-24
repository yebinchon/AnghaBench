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
typedef  int /*<<< orphan*/  u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_mc_method {int rcast; int mandatory; } ;
struct tipc_sock {int /*<<< orphan*/  cong_link_cnt; int /*<<< orphan*/  cong_links; int /*<<< orphan*/  portid; struct tipc_msg phdr; struct tipc_mc_method mc_method; int /*<<< orphan*/  group; } ;
struct tipc_member {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int ELINKCONG ; 
 scalar_t__ GROUP_H_SIZE ; 
 int /*<<< orphan*/  TIPC_GRP_UCAST_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_member*,int) ; 
 int FUNC9 (struct tipc_msg*,struct msghdr*,int /*<<< orphan*/ ,int,int,struct sk_buff_head*) ; 
 int FUNC10 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct net*,struct sk_buff_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct net *net, struct tipc_sock *tsk,
			       struct msghdr *m, struct tipc_member *mb,
			       u32 dnode, u32 dport, int dlen)
{
	u16 bc_snd_nxt = FUNC7(tsk->group);
	struct tipc_mc_method *method = &tsk->mc_method;
	int blks = FUNC12(GROUP_H_SIZE + dlen);
	struct tipc_msg *hdr = &tsk->phdr;
	struct sk_buff_head pkts;
	int mtu, rc;

	/* Complete message header */
	FUNC5(hdr, TIPC_GRP_UCAST_MSG);
	FUNC4(hdr, GROUP_H_SIZE);
	FUNC2(hdr, dport);
	FUNC1(hdr, dnode);
	FUNC3(hdr, bc_snd_nxt);

	/* Build message as chain of buffers */
	FUNC0(&pkts);
	mtu = FUNC10(net, dnode, tsk->portid);
	rc = FUNC9(hdr, m, 0, dlen, mtu, &pkts);
	if (FUNC13(rc != dlen))
		return rc;

	/* Send message */
	rc = FUNC11(net, &pkts, dnode, tsk->portid);
	if (FUNC13(rc == -ELINKCONG)) {
		FUNC6(&tsk->cong_links, dnode, 0);
		tsk->cong_link_cnt++;
	}

	/* Update send window */
	FUNC8(mb, blks);

	/* A broadcast sent within next EXPIRE period must follow same path */
	method->rcast = true;
	method->mandatory = true;
	return dlen;
}