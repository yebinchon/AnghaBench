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
struct user_namespace {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_type; } ;
struct sk_buff {int dummy; } ;
struct packet_sock {int /*<<< orphan*/  num; } ;
struct packet_diag_req {int pdiag_show; } ;
struct packet_diag_msg {int pdiag_ino; int /*<<< orphan*/  pdiag_cookie; int /*<<< orphan*/  pdiag_num; int /*<<< orphan*/  pdiag_type; int /*<<< orphan*/  pdiag_family; } ;
struct nlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  PACKET_DIAG_FILTER ; 
 int /*<<< orphan*/  PACKET_DIAG_MEMINFO ; 
 int /*<<< orphan*/  PACKET_DIAG_UID ; 
 int PACKET_SHOW_FANOUT ; 
 int PACKET_SHOW_FILTER ; 
 int PACKET_SHOW_INFO ; 
 int PACKET_SHOW_MCLIST ; 
 int PACKET_SHOW_MEMINFO ; 
 int PACKET_SHOW_RING_CFG ; 
 int /*<<< orphan*/  SOCK_DIAG_BY_FAMILY ; 
 int /*<<< orphan*/  FUNC0 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct packet_diag_msg* FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct packet_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct packet_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct packet_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct packet_sock*,struct sk_buff*) ; 
 struct packet_sock* FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (int,struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 

__attribute__((used)) static int FUNC16(struct sock *sk, struct sk_buff *skb,
			struct packet_diag_req *req,
			bool may_report_filterinfo,
			struct user_namespace *user_ns,
			u32 portid, u32 seq, u32 flags, int sk_ino)
{
	struct nlmsghdr *nlh;
	struct packet_diag_msg *rp;
	struct packet_sock *po = FUNC11(sk);

	nlh = FUNC5(skb, portid, seq, SOCK_DIAG_BY_FAMILY, sizeof(*rp), flags);
	if (!nlh)
		return -EMSGSIZE;

	rp = FUNC3(nlh);
	rp->pdiag_family = AF_PACKET;
	rp->pdiag_type = sk->sk_type;
	rp->pdiag_num = FUNC6(po->num);
	rp->pdiag_ino = sk_ino;
	FUNC14(sk, rp->pdiag_cookie);

	if ((req->pdiag_show & PACKET_SHOW_INFO) &&
			FUNC8(po, skb))
		goto out_nlmsg_trim;

	if ((req->pdiag_show & PACKET_SHOW_INFO) &&
	    FUNC1(skb, PACKET_DIAG_UID,
			FUNC0(user_ns, FUNC15(sk))))
		goto out_nlmsg_trim;

	if ((req->pdiag_show & PACKET_SHOW_MCLIST) &&
			FUNC9(po, skb))
		goto out_nlmsg_trim;

	if ((req->pdiag_show & PACKET_SHOW_RING_CFG) &&
			FUNC10(po, skb))
		goto out_nlmsg_trim;

	if ((req->pdiag_show & PACKET_SHOW_FANOUT) &&
			FUNC7(po, skb))
		goto out_nlmsg_trim;

	if ((req->pdiag_show & PACKET_SHOW_MEMINFO) &&
	    FUNC13(sk, skb, PACKET_DIAG_MEMINFO))
		goto out_nlmsg_trim;

	if ((req->pdiag_show & PACKET_SHOW_FILTER) &&
	    FUNC12(may_report_filterinfo, sk, skb,
				     PACKET_DIAG_FILTER))
		goto out_nlmsg_trim;

	FUNC4(skb, nlh);
	return 0;

out_nlmsg_trim:
	FUNC2(skb, nlh);
	return -EMSGSIZE;
}