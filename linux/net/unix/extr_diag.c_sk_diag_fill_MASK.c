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
struct unix_diag_req {int udiag_show; } ;
struct unix_diag_msg {int udiag_ino; int /*<<< orphan*/  udiag_cookie; scalar_t__ pad; int /*<<< orphan*/  udiag_state; int /*<<< orphan*/  udiag_type; int /*<<< orphan*/  udiag_family; } ;
struct sock {int /*<<< orphan*/  sk_shutdown; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  SOCK_DIAG_BY_FAMILY ; 
 int UDIAG_SHOW_ICONS ; 
 int UDIAG_SHOW_MEMINFO ; 
 int UDIAG_SHOW_NAME ; 
 int UDIAG_SHOW_PEER ; 
 int UDIAG_SHOW_RQLEN ; 
 int UDIAG_SHOW_UID ; 
 int UDIAG_SHOW_VFS ; 
 int /*<<< orphan*/  UNIX_DIAG_MEMINFO ; 
 int /*<<< orphan*/  UNIX_DIAG_SHUTDOWN ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct unix_diag_msg* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct sk_buff *skb, struct unix_diag_req *req,
		u32 portid, u32 seq, u32 flags, int sk_ino)
{
	struct nlmsghdr *nlh;
	struct unix_diag_msg *rep;

	nlh = FUNC4(skb, portid, seq, SOCK_DIAG_BY_FAMILY, sizeof(*rep),
			flags);
	if (!nlh)
		return -EMSGSIZE;

	rep = FUNC2(nlh);
	rep->udiag_family = AF_UNIX;
	rep->udiag_type = sk->sk_type;
	rep->udiag_state = sk->sk_state;
	rep->pad = 0;
	rep->udiag_ino = sk_ino;
	FUNC12(sk, rep->udiag_cookie);

	if ((req->udiag_show & UDIAG_SHOW_NAME) &&
	    FUNC6(sk, skb))
		goto out_nlmsg_trim;

	if ((req->udiag_show & UDIAG_SHOW_VFS) &&
	    FUNC9(sk, skb))
		goto out_nlmsg_trim;

	if ((req->udiag_show & UDIAG_SHOW_PEER) &&
	    FUNC7(sk, skb))
		goto out_nlmsg_trim;

	if ((req->udiag_show & UDIAG_SHOW_ICONS) &&
	    FUNC5(sk, skb))
		goto out_nlmsg_trim;

	if ((req->udiag_show & UDIAG_SHOW_RQLEN) &&
	    FUNC10(sk, skb))
		goto out_nlmsg_trim;

	if ((req->udiag_show & UDIAG_SHOW_MEMINFO) &&
	    FUNC11(sk, skb, UNIX_DIAG_MEMINFO))
		goto out_nlmsg_trim;

	if (FUNC0(skb, UNIX_DIAG_SHUTDOWN, sk->sk_shutdown))
		goto out_nlmsg_trim;

	if ((req->udiag_show & UDIAG_SHOW_UID) &&
	    FUNC8(sk, skb))
		goto out_nlmsg_trim;

	FUNC3(skb, nlh);
	return 0;

out_nlmsg_trim:
	FUNC1(skb, nlh);
	return -EMSGSIZE;
}