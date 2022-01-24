#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfrm_user_sec_ctx {int dummy; } ;
struct TYPE_4__ {int dead; } ;
struct TYPE_6__ {int /*<<< orphan*/  soft_use_expires_seconds; int /*<<< orphan*/  soft_add_expires_seconds; void* soft_byte_limit; void* soft_packet_limit; int /*<<< orphan*/  hard_use_expires_seconds; int /*<<< orphan*/  hard_add_expires_seconds; void* hard_byte_limit; void* hard_packet_limit; } ;
struct TYPE_5__ {void* dport_mask; scalar_t__ dport; void* proto; int /*<<< orphan*/  prefixlen_d; int /*<<< orphan*/  daddr; void* sport_mask; scalar_t__ sport; int /*<<< orphan*/  prefixlen_s; int /*<<< orphan*/  family; int /*<<< orphan*/  saddr; } ;
struct xfrm_policy {TYPE_1__ walk; scalar_t__ xfrm_nr; TYPE_3__ lft; int /*<<< orphan*/  security; TYPE_2__ selector; int /*<<< orphan*/  family; int /*<<< orphan*/  priority; int /*<<< orphan*/  action; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_x_sec_ctx {int dummy; } ;
struct sadb_x_policy {scalar_t__ sadb_x_policy_type; scalar_t__ sadb_x_policy_dir; int /*<<< orphan*/  sadb_x_policy_priority; } ;
struct sadb_msg {scalar_t__ sadb_msg_type; int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; } ;
struct sadb_lifetime {int /*<<< orphan*/  sadb_lifetime_usetime; int /*<<< orphan*/  sadb_lifetime_addtime; int /*<<< orphan*/  sadb_lifetime_bytes; int /*<<< orphan*/  sadb_lifetime_allocations; } ;
struct sadb_address {int /*<<< orphan*/  sadb_address_proto; int /*<<< orphan*/  sadb_address_prefixlen; } ;
struct net {int dummy; } ;
struct km_event {int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IPSEC_DIR_MAX ; 
 scalar_t__ IPSEC_POLICY_DISCARD ; 
 scalar_t__ IPSEC_POLICY_IPSEC ; 
 int SADB_EXT_ADDRESS_DST ; 
 int SADB_EXT_ADDRESS_SRC ; 
 int SADB_EXT_LIFETIME_HARD ; 
 int SADB_EXT_LIFETIME_SOFT ; 
 int SADB_X_EXT_POLICY ; 
 int SADB_X_EXT_SEC_CTX ; 
 scalar_t__ SADB_X_SPDUPDATE ; 
 void* XFRM_INF ; 
 int /*<<< orphan*/  XFRM_MSG_NEWPOLICY ; 
 int /*<<< orphan*/  XFRM_MSG_UPDPOLICY ; 
 int /*<<< orphan*/  XFRM_POLICY_ALLOW ; 
 int /*<<< orphan*/  XFRM_POLICY_BLOCK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_user_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_policy*,scalar_t__,struct km_event*) ; 
 int FUNC4 (struct xfrm_policy*,struct sadb_x_policy*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 struct xfrm_user_sec_ctx* FUNC6 (struct sadb_x_sec_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sadb_address*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void* const,void* const) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct xfrm_user_sec_ctx*,int /*<<< orphan*/ ) ; 
 struct net* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfrm_policy*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC13 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct xfrm_policy*) ; 
 int FUNC15 (scalar_t__,struct xfrm_policy*,int) ; 

__attribute__((used)) static int FUNC16(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
	struct net *net = FUNC10(sk);
	int err = 0;
	struct sadb_lifetime *lifetime;
	struct sadb_address *sa;
	struct sadb_x_policy *pol;
	struct xfrm_policy *xp;
	struct km_event c;
	struct sadb_x_sec_ctx *sec_ctx;

	if (!FUNC8(ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
				     ext_hdrs[SADB_EXT_ADDRESS_DST-1]) ||
	    !ext_hdrs[SADB_X_EXT_POLICY-1])
		return -EINVAL;

	pol = ext_hdrs[SADB_X_EXT_POLICY-1];
	if (pol->sadb_x_policy_type > IPSEC_POLICY_IPSEC)
		return -EINVAL;
	if (!pol->sadb_x_policy_dir || pol->sadb_x_policy_dir >= IPSEC_DIR_MAX)
		return -EINVAL;

	xp = FUNC13(net, GFP_KERNEL);
	if (xp == NULL)
		return -ENOBUFS;

	xp->action = (pol->sadb_x_policy_type == IPSEC_POLICY_DISCARD ?
		      XFRM_POLICY_BLOCK : XFRM_POLICY_ALLOW);
	xp->priority = pol->sadb_x_policy_priority;

	sa = ext_hdrs[SADB_EXT_ADDRESS_SRC-1];
	xp->family = FUNC7(sa, &xp->selector.saddr);
	xp->selector.family = xp->family;
	xp->selector.prefixlen_s = sa->sadb_address_prefixlen;
	xp->selector.proto = FUNC5(sa->sadb_address_proto);
	xp->selector.sport = ((struct sockaddr_in *)(sa+1))->sin_port;
	if (xp->selector.sport)
		xp->selector.sport_mask = FUNC1(0xffff);

	sa = ext_hdrs[SADB_EXT_ADDRESS_DST-1];
	FUNC7(sa, &xp->selector.daddr);
	xp->selector.prefixlen_d = sa->sadb_address_prefixlen;

	/* Amusing, we set this twice.  KAME apps appear to set same value
	 * in both addresses.
	 */
	xp->selector.proto = FUNC5(sa->sadb_address_proto);

	xp->selector.dport = ((struct sockaddr_in *)(sa+1))->sin_port;
	if (xp->selector.dport)
		xp->selector.dport_mask = FUNC1(0xffff);

	sec_ctx = ext_hdrs[SADB_X_EXT_SEC_CTX - 1];
	if (sec_ctx != NULL) {
		struct xfrm_user_sec_ctx *uctx = FUNC6(sec_ctx, GFP_KERNEL);

		if (!uctx) {
			err = -ENOBUFS;
			goto out;
		}

		err = FUNC9(&xp->security, uctx, GFP_KERNEL);
		FUNC2(uctx);

		if (err)
			goto out;
	}

	xp->lft.soft_byte_limit = XFRM_INF;
	xp->lft.hard_byte_limit = XFRM_INF;
	xp->lft.soft_packet_limit = XFRM_INF;
	xp->lft.hard_packet_limit = XFRM_INF;
	if ((lifetime = ext_hdrs[SADB_EXT_LIFETIME_HARD-1]) != NULL) {
		xp->lft.hard_packet_limit = FUNC0(lifetime->sadb_lifetime_allocations);
		xp->lft.hard_byte_limit = FUNC0(lifetime->sadb_lifetime_bytes);
		xp->lft.hard_add_expires_seconds = lifetime->sadb_lifetime_addtime;
		xp->lft.hard_use_expires_seconds = lifetime->sadb_lifetime_usetime;
	}
	if ((lifetime = ext_hdrs[SADB_EXT_LIFETIME_SOFT-1]) != NULL) {
		xp->lft.soft_packet_limit = FUNC0(lifetime->sadb_lifetime_allocations);
		xp->lft.soft_byte_limit = FUNC0(lifetime->sadb_lifetime_bytes);
		xp->lft.soft_add_expires_seconds = lifetime->sadb_lifetime_addtime;
		xp->lft.soft_use_expires_seconds = lifetime->sadb_lifetime_usetime;
	}
	xp->xfrm_nr = 0;
	if (pol->sadb_x_policy_type == IPSEC_POLICY_IPSEC &&
	    (err = FUNC4(xp, pol)) < 0)
		goto out;

	err = FUNC15(pol->sadb_x_policy_dir-1, xp,
				 hdr->sadb_msg_type != SADB_X_SPDUPDATE);

	FUNC11(xp, err ? 0 : 1, true);

	if (err)
		goto out;

	if (hdr->sadb_msg_type == SADB_X_SPDUPDATE)
		c.event = XFRM_MSG_UPDPOLICY;
	else
		c.event = XFRM_MSG_NEWPOLICY;

	c.seq = hdr->sadb_msg_seq;
	c.portid = hdr->sadb_msg_pid;

	FUNC3(xp, pol->sadb_x_policy_dir-1, &c);
	FUNC12(xp);
	return 0;

out:
	xp->walk.dead = 1;
	FUNC14(xp);
	return err;
}