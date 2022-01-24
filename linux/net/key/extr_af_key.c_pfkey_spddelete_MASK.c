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
struct xfrm_user_sec_ctx {int dummy; } ;
struct xfrm_selector {void* dport_mask; scalar_t__ dport; void* proto; int /*<<< orphan*/  prefixlen_d; int /*<<< orphan*/  daddr; void* sport_mask; scalar_t__ sport; int /*<<< orphan*/  prefixlen_s; int /*<<< orphan*/  saddr; int /*<<< orphan*/  family; } ;
struct xfrm_sec_ctx {int dummy; } ;
struct xfrm_policy {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_x_sec_ctx {int dummy; } ;
struct sadb_x_policy {scalar_t__ sadb_x_policy_dir; } ;
struct sadb_msg {int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; } ;
struct sadb_address {int /*<<< orphan*/  sadb_address_proto; int /*<<< orphan*/  sadb_address_prefixlen; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ byid; } ;
struct km_event {int /*<<< orphan*/  event; TYPE_1__ data; int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; } ;
typedef  int /*<<< orphan*/  sel ;

/* Variables and functions */
 int /*<<< orphan*/  DUMMY_MARK ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IPSEC_DIR_MAX ; 
 int SADB_EXT_ADDRESS_DST ; 
 int SADB_EXT_ADDRESS_SRC ; 
 int SADB_X_EXT_POLICY ; 
 int SADB_X_EXT_SEC_CTX ; 
 int /*<<< orphan*/  XFRM_MSG_DELPOLICY ; 
 int /*<<< orphan*/  XFRM_POLICY_TYPE_MAIN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_user_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_policy*,scalar_t__,struct km_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_selector*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 struct xfrm_user_sec_ctx* FUNC5 (struct sadb_x_sec_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sadb_address*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void* const,void* const) ; 
 int FUNC8 (struct xfrm_sec_ctx**,struct xfrm_user_sec_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_sec_ctx*) ; 
 struct net* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfrm_policy*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC13 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct xfrm_selector*,struct xfrm_sec_ctx*,int,int*) ; 

__attribute__((used)) static int FUNC14(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
	struct net *net = FUNC10(sk);
	int err;
	struct sadb_address *sa;
	struct sadb_x_policy *pol;
	struct xfrm_policy *xp;
	struct xfrm_selector sel;
	struct km_event c;
	struct sadb_x_sec_ctx *sec_ctx;
	struct xfrm_sec_ctx *pol_ctx = NULL;

	if (!FUNC7(ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
				     ext_hdrs[SADB_EXT_ADDRESS_DST-1]) ||
	    !ext_hdrs[SADB_X_EXT_POLICY-1])
		return -EINVAL;

	pol = ext_hdrs[SADB_X_EXT_POLICY-1];
	if (!pol->sadb_x_policy_dir || pol->sadb_x_policy_dir >= IPSEC_DIR_MAX)
		return -EINVAL;

	FUNC3(&sel, 0, sizeof(sel));

	sa = ext_hdrs[SADB_EXT_ADDRESS_SRC-1];
	sel.family = FUNC6(sa, &sel.saddr);
	sel.prefixlen_s = sa->sadb_address_prefixlen;
	sel.proto = FUNC4(sa->sadb_address_proto);
	sel.sport = ((struct sockaddr_in *)(sa+1))->sin_port;
	if (sel.sport)
		sel.sport_mask = FUNC0(0xffff);

	sa = ext_hdrs[SADB_EXT_ADDRESS_DST-1];
	FUNC6(sa, &sel.daddr);
	sel.prefixlen_d = sa->sadb_address_prefixlen;
	sel.proto = FUNC4(sa->sadb_address_proto);
	sel.dport = ((struct sockaddr_in *)(sa+1))->sin_port;
	if (sel.dport)
		sel.dport_mask = FUNC0(0xffff);

	sec_ctx = ext_hdrs[SADB_X_EXT_SEC_CTX - 1];
	if (sec_ctx != NULL) {
		struct xfrm_user_sec_ctx *uctx = FUNC5(sec_ctx, GFP_KERNEL);

		if (!uctx)
			return -ENOMEM;

		err = FUNC8(&pol_ctx, uctx, GFP_KERNEL);
		FUNC1(uctx);
		if (err)
			return err;
	}

	xp = FUNC13(net, DUMMY_MARK, 0, XFRM_POLICY_TYPE_MAIN,
				   pol->sadb_x_policy_dir - 1, &sel, pol_ctx,
				   1, &err);
	FUNC9(pol_ctx);
	if (xp == NULL)
		return -ENOENT;

	FUNC11(xp, err ? 0 : 1, true);

	if (err)
		goto out;

	c.seq = hdr->sadb_msg_seq;
	c.portid = hdr->sadb_msg_pid;
	c.data.byid = 0;
	c.event = XFRM_MSG_DELPOLICY;
	FUNC2(xp, pol->sadb_x_policy_dir-1, &c);

out:
	FUNC12(xp);
	return err;
}