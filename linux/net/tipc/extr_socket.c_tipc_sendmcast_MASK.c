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
struct tipc_mc_method {int dummy; } ;
struct tipc_msg {int dummy; } ;
struct tipc_sock {int /*<<< orphan*/  cong_link_cnt; scalar_t__ group; struct tipc_mc_method mc_method; struct tipc_msg phdr; } ;
struct tipc_nlist {int /*<<< orphan*/  remote; int /*<<< orphan*/  local; } ;
struct tipc_name_seq {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; } ;
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  MCAST_H_SIZE ; 
 int /*<<< orphan*/  TIPC_CLUSTER_SCOPE ; 
 int /*<<< orphan*/  TIPC_DUMP_SK_SNDQ ; 
 int /*<<< orphan*/  TIPC_MCAST_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff_head*) ; 
 struct net* FUNC10 (struct sock*) ; 
 int FUNC11 (struct net*) ; 
 int FUNC12 (struct net*,struct sk_buff_head*,struct tipc_mc_method*,struct tipc_nlist*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct tipc_msg*,struct msghdr*,int /*<<< orphan*/ ,size_t,int,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tipc_nlist*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_nlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_nlist*) ; 
 int /*<<< orphan*/  FUNC17 (struct net*) ; 
 struct tipc_sock* FUNC18 (struct sock*) ; 
 int FUNC19 (struct socket*,long*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(struct  socket *sock, struct tipc_name_seq *seq,
			  struct msghdr *msg, size_t dlen, long timeout)
{
	struct sock *sk = sock->sk;
	struct tipc_sock *tsk = FUNC18(sk);
	struct tipc_msg *hdr = &tsk->phdr;
	struct net *net = FUNC10(sk);
	int mtu = FUNC11(net);
	struct tipc_mc_method *method = &tsk->mc_method;
	struct sk_buff_head pkts;
	struct tipc_nlist dsts;
	int rc;

	if (tsk->group)
		return -EACCES;

	/* Block or return if any destination link is congested */
	rc = FUNC19(sock, &timeout, !tsk->cong_link_cnt);
	if (FUNC21(rc))
		return rc;

	/* Lookup destination nodes */
	FUNC15(&dsts, FUNC17(net));
	FUNC14(net, seq->type, seq->lower,
				      seq->upper, &dsts);
	if (!dsts.local && !dsts.remote)
		return -EHOSTUNREACH;

	/* Build message header */
	FUNC8(hdr, TIPC_MCAST_MSG);
	FUNC3(hdr, MCAST_H_SIZE);
	FUNC4(hdr, TIPC_CLUSTER_SCOPE);
	FUNC2(hdr, 0);
	FUNC1(hdr, 0);
	FUNC6(hdr, seq->type);
	FUNC5(hdr, seq->lower);
	FUNC7(hdr, seq->upper);

	/* Build message as chain of buffers */
	FUNC0(&pkts);
	rc = FUNC13(hdr, msg, 0, dlen, mtu, &pkts);

	/* Send message if build was successful */
	if (FUNC21(rc == dlen)) {
		FUNC20(sk, FUNC9(&pkts),
					TIPC_DUMP_SK_SNDQ, " ");
		rc = FUNC12(net, &pkts, method, &dsts,
				     &tsk->cong_link_cnt);
	}

	FUNC16(&dsts);

	return rc ? rc : dlen;
}