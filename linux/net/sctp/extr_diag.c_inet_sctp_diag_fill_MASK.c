#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct user_namespace {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  len; } ;
struct sock {int sk_rcvbuf; int sk_sndbuf; int sk_forward_alloc; int sk_wmem_queued; int /*<<< orphan*/  sk_drops; TYPE_2__ sk_backlog; int /*<<< orphan*/  sk_omem_alloc; int /*<<< orphan*/  sk_state; } ;
struct sk_buff {int dummy; } ;
struct sctp_infox {struct sctp_association* asoc; struct sctp_info* sctpinfo; } ;
struct sctp_info {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_12__ {struct list_head address_list; } ;
struct TYPE_13__ {TYPE_5__ bind_addr; } ;
struct sctp_endpoint {TYPE_6__ base; } ;
struct TYPE_10__ {struct list_head address_list; } ;
struct TYPE_11__ {TYPE_3__ bind_addr; } ;
struct sctp_association {int sndbuf_used; TYPE_4__ base; int /*<<< orphan*/  rmem_alloc; TYPE_1__* ep; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct inet_diag_req_v2 {int idiag_ext; } ;
struct inet_diag_msg {scalar_t__ idiag_retrans; scalar_t__ idiag_timer; int /*<<< orphan*/  idiag_state; } ;
typedef  int /*<<< orphan*/  mem ;
struct TYPE_14__ {struct sctp_endpoint* ep; } ;
struct TYPE_8__ {scalar_t__ rcvbuf_policy; scalar_t__ sndbuf_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EMSGSIZE ; 
 int INET_DIAG_CONG ; 
 int INET_DIAG_INFO ; 
 int /*<<< orphan*/  INET_DIAG_PAD ; 
 int INET_DIAG_SKMEMINFO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t SK_MEMINFO_BACKLOG ; 
 size_t SK_MEMINFO_DROPS ; 
 size_t SK_MEMINFO_FWD_ALLOC ; 
 size_t SK_MEMINFO_OPTMEM ; 
 size_t SK_MEMINFO_RCVBUF ; 
 size_t SK_MEMINFO_RMEM_ALLOC ; 
 size_t SK_MEMINFO_SNDBUF ; 
 int SK_MEMINFO_VARS ; 
 size_t SK_MEMINFO_WMEM_ALLOC ; 
 size_t SK_MEMINFO_WMEM_QUEUED ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*,struct inet_diag_msg*,int,struct user_namespace*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inet_diag_msg*,struct sock*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC6 (struct inet_diag_msg*,struct sock*,struct sctp_association*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,struct list_head*) ; 
 void* FUNC8 (struct nlattr*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int,int,int**) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int,char*) ; 
 struct nlattr* FUNC11 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct nlmsghdr*) ; 
 struct inet_diag_msg* FUNC13 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC15 (struct sk_buff*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct inet_diag_msg*,struct sctp_infox*) ; 
 TYPE_7__* FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int FUNC19 (struct sock*) ; 
 int FUNC20 (struct sock*) ; 

__attribute__((used)) static int FUNC21(struct sock *sk, struct sctp_association *asoc,
			       struct sk_buff *skb,
			       const struct inet_diag_req_v2 *req,
			       struct user_namespace *user_ns,
			       int portid, u32 seq, u16 nlmsg_flags,
			       const struct nlmsghdr *unlh,
			       bool net_admin)
{
	struct sctp_endpoint *ep = FUNC17(sk)->ep;
	struct list_head *addr_list;
	struct inet_diag_msg *r;
	struct nlmsghdr  *nlh;
	int ext = req->idiag_ext;
	struct sctp_infox infox;
	void *info = NULL;

	nlh = FUNC15(skb, portid, seq, unlh->nlmsg_type, sizeof(*r),
			nlmsg_flags);
	if (!nlh)
		return -EMSGSIZE;

	r = FUNC13(nlh);
	FUNC0(!FUNC18(sk));

	if (asoc) {
		FUNC6(r, sk, asoc);
	} else {
		FUNC4(r, sk);
		r->idiag_state = sk->sk_state;
		r->idiag_timer = 0;
		r->idiag_retrans = 0;
	}

	if (FUNC3(sk, skb, r, ext, user_ns, net_admin))
		goto errout;

	if (ext & (1 << (INET_DIAG_SKMEMINFO - 1))) {
		u32 mem[SK_MEMINFO_VARS];
		int amt;

		if (asoc && asoc->ep->sndbuf_policy)
			amt = asoc->sndbuf_used;
		else
			amt = FUNC20(sk);
		mem[SK_MEMINFO_WMEM_ALLOC] = amt;
		if (asoc && asoc->ep->rcvbuf_policy)
			amt = FUNC2(&asoc->rmem_alloc);
		else
			amt = FUNC19(sk);
		mem[SK_MEMINFO_RMEM_ALLOC] = amt;
		mem[SK_MEMINFO_RCVBUF] = sk->sk_rcvbuf;
		mem[SK_MEMINFO_SNDBUF] = sk->sk_sndbuf;
		mem[SK_MEMINFO_FWD_ALLOC] = sk->sk_forward_alloc;
		mem[SK_MEMINFO_WMEM_QUEUED] = sk->sk_wmem_queued;
		mem[SK_MEMINFO_OPTMEM] = FUNC2(&sk->sk_omem_alloc);
		mem[SK_MEMINFO_BACKLOG] = FUNC1(sk->sk_backlog.len);
		mem[SK_MEMINFO_DROPS] = FUNC2(&sk->sk_drops);

		if (FUNC9(skb, INET_DIAG_SKMEMINFO, sizeof(mem), &mem) < 0)
			goto errout;
	}

	if (ext & (1 << (INET_DIAG_INFO - 1))) {
		struct nlattr *attr;

		attr = FUNC11(skb, INET_DIAG_INFO,
					 sizeof(struct sctp_info),
					 INET_DIAG_PAD);
		if (!attr)
			goto errout;

		info = FUNC8(attr);
	}
	infox.sctpinfo = (struct sctp_info *)info;
	infox.asoc = asoc;
	FUNC16(sk, r, &infox);

	addr_list = asoc ? &asoc->base.bind_addr.address_list
			 : &ep->base.bind_addr.address_list;
	if (FUNC7(skb, addr_list))
		goto errout;

	if (asoc && (ext & (1 << (INET_DIAG_CONG - 1))))
		if (FUNC10(skb, INET_DIAG_CONG, "reno") < 0)
			goto errout;

	if (asoc && FUNC5(skb, asoc))
		goto errout;

	FUNC14(skb, nlh);
	return 0;

errout:
	FUNC12(skb, nlh);
	return -EMSGSIZE;
}