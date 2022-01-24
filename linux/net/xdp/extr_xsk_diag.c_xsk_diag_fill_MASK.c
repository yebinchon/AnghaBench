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
struct xdp_sock {int /*<<< orphan*/  mutex; } ;
struct xdp_diag_req {int xdiag_show; } ;
struct xdp_diag_msg {int xdiag_ino; int /*<<< orphan*/  xdiag_cookie; int /*<<< orphan*/  xdiag_type; int /*<<< orphan*/  xdiag_family; } ;
struct user_namespace {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_XDP ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  SOCK_DIAG_BY_FAMILY ; 
 int /*<<< orphan*/  XDP_DIAG_MEMINFO ; 
 int /*<<< orphan*/  XDP_DIAG_UID ; 
 int XDP_SHOW_INFO ; 
 int XDP_SHOW_MEMINFO ; 
 int XDP_SHOW_RING_CFG ; 
 int XDP_SHOW_UMEM ; 
 int /*<<< orphan*/  FUNC0 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdp_diag_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct xdp_diag_msg* FUNC6 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 struct xdp_sock* FUNC12 (struct sock*) ; 
 scalar_t__ FUNC13 (struct xdp_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct xdp_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct xdp_sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC16(struct sock *sk, struct sk_buff *nlskb,
			 struct xdp_diag_req *req,
			 struct user_namespace *user_ns,
			 u32 portid, u32 seq, u32 flags, int sk_ino)
{
	struct xdp_sock *xs = FUNC12(sk);
	struct xdp_diag_msg *msg;
	struct nlmsghdr *nlh;

	nlh = FUNC8(nlskb, portid, seq, SOCK_DIAG_BY_FAMILY, sizeof(*msg),
			flags);
	if (!nlh)
		return -EMSGSIZE;

	msg = FUNC6(nlh);
	FUNC1(msg, 0, sizeof(*msg));
	msg->xdiag_family = AF_XDP;
	msg->xdiag_type = sk->sk_type;
	msg->xdiag_ino = sk_ino;
	FUNC10(sk, msg->xdiag_cookie);

	FUNC2(&xs->mutex);
	if ((req->xdiag_show & XDP_SHOW_INFO) && FUNC13(xs, nlskb))
		goto out_nlmsg_trim;

	if ((req->xdiag_show & XDP_SHOW_INFO) &&
	    FUNC4(nlskb, XDP_DIAG_UID,
			FUNC0(user_ns, FUNC11(sk))))
		goto out_nlmsg_trim;

	if ((req->xdiag_show & XDP_SHOW_RING_CFG) &&
	    FUNC14(xs, nlskb))
		goto out_nlmsg_trim;

	if ((req->xdiag_show & XDP_SHOW_UMEM) &&
	    FUNC15(xs, nlskb))
		goto out_nlmsg_trim;

	if ((req->xdiag_show & XDP_SHOW_MEMINFO) &&
	    FUNC9(sk, nlskb, XDP_DIAG_MEMINFO))
		goto out_nlmsg_trim;

	FUNC3(&xs->mutex);
	FUNC7(nlskb, nlh);
	return 0;

out_nlmsg_trim:
	FUNC3(&xs->mutex);
	FUNC5(nlskb, nlh);
	return -EMSGSIZE;
}