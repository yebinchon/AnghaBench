#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_21__ ;
typedef  struct TYPE_33__   TYPE_20__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_19__ ;
typedef  struct TYPE_30__   TYPE_18__ ;
typedef  struct TYPE_29__   TYPE_17__ ;
typedef  struct TYPE_28__   TYPE_16__ ;
typedef  struct TYPE_27__   TYPE_15__ ;
typedef  struct TYPE_26__   TYPE_14__ ;
typedef  struct TYPE_25__   TYPE_13__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_state_afinfo {int (* transport_finish ) (struct sk_buff*,int) ;} ;
struct xfrm_mode {int /*<<< orphan*/  family; } ;
struct TYPE_25__ {unsigned int family; int flags; } ;
struct TYPE_23__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_22__ {unsigned int family; } ;
struct TYPE_42__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct TYPE_29__ {int /*<<< orphan*/  integrity_failed; } ;
struct TYPE_24__ {scalar_t__ state; } ;
struct xfrm_state {TYPE_16__* type; int /*<<< orphan*/  lock; struct xfrm_mode inner_mode; TYPE_13__ outer_mode; TYPE_11__ id; TYPE_10__ sel; TYPE_9__ curlft; TYPE_8__* repl; TYPE_17__ stats; TYPE_7__* type_offload; TYPE_6__* encap; TYPE_12__ km; } ;
struct xfrm_offload {int flags; int status; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  dev; int /*<<< orphan*/  mark; } ;
struct sec_path {scalar_t__ len; scalar_t__ olen; struct xfrm_state** xvec; } ;
struct net {int dummy; } ;
typedef  void* __be32 ;
struct TYPE_41__ {int /*<<< orphan*/  (* advance ) (struct xfrm_state*,void*) ;scalar_t__ (* recheck ) (struct xfrm_state*,struct sk_buff*,void*) ;scalar_t__ (* check ) (struct xfrm_state*,struct sk_buff*,void*) ;} ;
struct TYPE_40__ {int (* input_tail ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct TYPE_39__ {int encap_type; } ;
struct TYPE_38__ {TYPE_4__* ip6; TYPE_2__* ip4; } ;
struct TYPE_36__ {int /*<<< orphan*/  i_key; } ;
struct TYPE_37__ {TYPE_3__ parms; } ;
struct TYPE_32__ {int /*<<< orphan*/  i_key; } ;
struct TYPE_35__ {TYPE_1__ parms; } ;
struct TYPE_34__ {int protocol; } ;
struct TYPE_26__ {void* hi; void* low; } ;
struct TYPE_27__ {TYPE_14__ input; } ;
struct TYPE_33__ {TYPE_15__ seq; } ;
struct TYPE_31__ {unsigned int family; scalar_t__ daddroff; void* seq; } ;
struct TYPE_30__ {TYPE_5__ tunnel; } ;
struct TYPE_28__ {int proto; int (* input ) (struct xfrm_state*,struct sk_buff*) ;} ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 unsigned int AF_UNSPEC ; 
 int CRYPTO_DONE ; 
 int CRYPTO_INVALID_PROTOCOL ; 
 int CRYPTO_SUCCESS ; 
 int CRYPTO_TRANSPORT_AH_AUTH_FAILED ; 
 int CRYPTO_TRANSPORT_ESP_AUTH_FAILED ; 
 int CRYPTO_TUNNEL_AH_AUTH_FAILED ; 
 int CRYPTO_TUNNEL_ESP_AUTH_FAILED ; 
 int EAFNOSUPPORT ; 
 int EBADMSG ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMACQUIREERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINBUFFERERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINHDRERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINNOSTATES ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINSTATEEXPIRED ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINSTATEINVALID ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINSTATEMISMATCH ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINSTATEMODEERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINSTATEPROTOERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINSTATESEQERROR ; 
 int XFRM_GRO ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ XFRM_MAX_DEPTH ; 
 int XFRM_MODE_FLAG_TUNNEL ; 
 TYPE_21__* FUNC1 (struct sk_buff*) ; 
 TYPE_20__* FUNC2 (struct sk_buff*) ; 
 TYPE_19__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ XFRM_STATE_ACQ ; 
 scalar_t__ XFRM_STATE_VALID ; 
 TYPE_18__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gro_cells ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct xfrm_state_afinfo const*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 struct sec_path* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 struct sec_path* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (struct xfrm_state*,struct sk_buff*,void*) ; 
 int FUNC26 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC27 (struct xfrm_state*,struct sk_buff*) ; 
 scalar_t__ FUNC28 (struct xfrm_state*,struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC29 (struct xfrm_state*,void*) ; 
 int FUNC30 (struct sk_buff*,int) ; 
 scalar_t__ FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (struct xfrm_state*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct sk_buff*,unsigned int,void*,void*) ; 
 scalar_t__ FUNC34 (struct xfrm_state*,struct xfrm_mode const*,struct sk_buff*) ; 
 struct xfrm_state* FUNC35 (struct sk_buff*) ; 
 struct xfrm_mode* FUNC36 (struct xfrm_state*,int) ; 
 struct xfrm_offload* FUNC37 (struct sk_buff*) ; 
 int FUNC38 (struct sk_buff*,int,void**,void**) ; 
 int FUNC39 (struct sk_buff*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC40 (struct xfrm_state*,void*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,struct xfrm_state*) ; 
 struct xfrm_state_afinfo* FUNC42 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC43 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC44 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int,unsigned int) ; 
 scalar_t__ FUNC45 (struct sk_buff*,struct xfrm_state*,unsigned int) ; 

int FUNC46(struct sk_buff *skb, int nexthdr, __be32 spi, int encap_type)
{
	const struct xfrm_state_afinfo *afinfo;
	struct net *net = FUNC7(skb->dev);
	const struct xfrm_mode *inner_mode;
	int err;
	__be32 seq;
	__be32 seq_hi;
	struct xfrm_state *x = NULL;
	xfrm_address_t *daddr;
	u32 mark = skb->mark;
	unsigned int family = AF_UNSPEC;
	int decaps = 0;
	int async = 0;
	bool xfrm_gro = false;
	bool crypto_done = false;
	struct xfrm_offload *xo = FUNC37(skb);
	struct sec_path *sp;

	if (encap_type < 0) {
		x = FUNC35(skb);

		if (FUNC31(x->km.state != XFRM_STATE_VALID)) {
			if (x->km.state == XFRM_STATE_ACQ)
				FUNC0(net, LINUX_MIB_XFRMACQUIREERROR);
			else
				FUNC0(net,
					       LINUX_MIB_XFRMINSTATEINVALID);
			goto drop;
		}

		family = x->outer_mode.family;

		/* An encap_type of -1 indicates async resumption. */
		if (encap_type == -1) {
			async = 1;
			seq = FUNC2(skb)->seq.input.low;
			goto resume;
		}

		/* encap_type < -1 indicates a GRO call. */
		encap_type = 0;
		seq = FUNC3(skb)->seq;

		if (xo && (xo->flags & CRYPTO_DONE)) {
			crypto_done = true;
			family = FUNC3(skb)->family;

			if (!(xo->status & CRYPTO_SUCCESS)) {
				if (xo->status &
				    (CRYPTO_TRANSPORT_AH_AUTH_FAILED |
				     CRYPTO_TRANSPORT_ESP_AUTH_FAILED |
				     CRYPTO_TUNNEL_AH_AUTH_FAILED |
				     CRYPTO_TUNNEL_ESP_AUTH_FAILED)) {

					FUNC32(x, skb,
								 x->type->proto);
					x->stats.integrity_failed++;
					FUNC0(net, LINUX_MIB_XFRMINSTATEPROTOERROR);
					goto drop;
				}

				if (xo->status & CRYPTO_INVALID_PROTOCOL) {
					FUNC0(net, LINUX_MIB_XFRMINSTATEPROTOERROR);
					goto drop;
				}

				FUNC0(net, LINUX_MIB_XFRMINBUFFERERROR);
				goto drop;
			}

			if ((err = FUNC38(skb, nexthdr, &spi, &seq)) != 0) {
				FUNC0(net, LINUX_MIB_XFRMINHDRERROR);
				goto drop;
			}
		}

		goto lock;
	}

	family = FUNC3(skb)->family;

	/* if tunnel is present override skb->mark value with tunnel i_key */
	switch (family) {
	case AF_INET:
		if (FUNC4(skb)->tunnel.ip4)
			mark = FUNC5(FUNC4(skb)->tunnel.ip4->parms.i_key);
		break;
	case AF_INET6:
		if (FUNC4(skb)->tunnel.ip6)
			mark = FUNC5(FUNC4(skb)->tunnel.ip6->parms.i_key);
		break;
	}

	sp = FUNC17(skb);
	if (!sp) {
		FUNC0(net, LINUX_MIB_XFRMINERROR);
		goto drop;
	}

	seq = 0;
	if (!spi && (err = FUNC38(skb, nexthdr, &spi, &seq)) != 0) {
		FUNC16(skb);
		FUNC0(net, LINUX_MIB_XFRMINHDRERROR);
		goto drop;
	}

	daddr = (xfrm_address_t *)(FUNC21(skb) +
				   FUNC3(skb)->daddroff);
	do {
		sp = FUNC22(skb);

		if (sp->len == XFRM_MAX_DEPTH) {
			FUNC16(skb);
			FUNC0(net, LINUX_MIB_XFRMINBUFFERERROR);
			goto drop;
		}

		x = FUNC44(net, mark, daddr, spi, nexthdr, family);
		if (x == NULL) {
			FUNC16(skb);
			FUNC0(net, LINUX_MIB_XFRMINNOSTATES);
			FUNC33(skb, family, spi, seq);
			goto drop;
		}

		skb->mark = FUNC41(skb->mark, x);

		sp->xvec[sp->len++] = x;

		FUNC20(skb);
		if (!FUNC18(skb)) {
			FUNC0(net, LINUX_MIB_XFRMINERROR);
			goto drop;
		}

lock:
		FUNC23(&x->lock);

		if (FUNC31(x->km.state != XFRM_STATE_VALID)) {
			if (x->km.state == XFRM_STATE_ACQ)
				FUNC0(net, LINUX_MIB_XFRMACQUIREERROR);
			else
				FUNC0(net,
					       LINUX_MIB_XFRMINSTATEINVALID);
			goto drop_unlock;
		}

		if ((x->encap ? x->encap->encap_type : 0) != encap_type) {
			FUNC0(net, LINUX_MIB_XFRMINSTATEMISMATCH);
			goto drop_unlock;
		}

		if (x->repl->check(x, skb, seq)) {
			FUNC0(net, LINUX_MIB_XFRMINSTATESEQERROR);
			goto drop_unlock;
		}

		if (FUNC43(x)) {
			FUNC0(net, LINUX_MIB_XFRMINSTATEEXPIRED);
			goto drop_unlock;
		}

		FUNC24(&x->lock);

		if (FUNC45(skb, x, family)) {
			FUNC0(net, LINUX_MIB_XFRMINSTATEMODEERROR);
			goto drop;
		}

		seq_hi = FUNC10(FUNC40(x, seq));

		FUNC2(skb)->seq.input.low = seq;
		FUNC2(skb)->seq.input.hi = seq_hi;

		FUNC6(skb->dev);

		if (crypto_done)
			nexthdr = x->type_offload->input_tail(x, skb);
		else
			nexthdr = x->type->input(x, skb);

		if (nexthdr == -EINPROGRESS)
			return 0;
resume:
		FUNC8(skb->dev);

		FUNC23(&x->lock);
		if (nexthdr <= 0) {
			if (nexthdr == -EBADMSG) {
				FUNC32(x, skb,
							 x->type->proto);
				x->stats.integrity_failed++;
			}
			FUNC0(net, LINUX_MIB_XFRMINSTATEPROTOERROR);
			goto drop_unlock;
		}

		/* only the first xfrm gets the encap type */
		encap_type = 0;

		if (async && x->repl->recheck(x, skb, seq)) {
			FUNC0(net, LINUX_MIB_XFRMINSTATESEQERROR);
			goto drop_unlock;
		}

		x->repl->advance(x, seq);

		x->curlft.bytes += skb->len;
		x->curlft.packets++;

		FUNC24(&x->lock);

		FUNC1(skb)->protocol = nexthdr;

		inner_mode = &x->inner_mode;

		if (x->sel.family == AF_UNSPEC) {
			inner_mode = FUNC36(x, FUNC1(skb)->protocol);
			if (inner_mode == NULL) {
				FUNC0(net, LINUX_MIB_XFRMINSTATEMODEERROR);
				goto drop;
			}
		}

		if (FUNC34(x, inner_mode, skb)) {
			FUNC0(net, LINUX_MIB_XFRMINSTATEMODEERROR);
			goto drop;
		}

		if (x->outer_mode.flags & XFRM_MODE_FLAG_TUNNEL) {
			decaps = 1;
			break;
		}

		/*
		 * We need the inner address.  However, we only get here for
		 * transport mode so the outer address is identical.
		 */
		daddr = &x->id.daddr;
		family = x->outer_mode.family;

		err = FUNC38(skb, nexthdr, &spi, &seq);
		if (err < 0) {
			FUNC0(net, LINUX_MIB_XFRMINHDRERROR);
			goto drop;
		}
		crypto_done = false;
	} while (!err);

	err = FUNC39(skb, family, x->type->proto, 0);
	if (err)
		goto drop;

	FUNC13(skb);

	if (decaps) {
		sp = FUNC22(skb);
		if (sp)
			sp->olen = 0;
		FUNC19(skb);
		FUNC9(&gro_cells, skb);
		return 0;
	} else {
		xo = FUNC37(skb);
		if (xo)
			xfrm_gro = xo->flags & XFRM_GRO;

		err = -EAFNOSUPPORT;
		FUNC14();
		afinfo = FUNC42(x->inner_mode.family);
		if (FUNC12(afinfo))
			err = afinfo->transport_finish(skb, xfrm_gro || async);
		FUNC15();
		if (xfrm_gro) {
			sp = FUNC22(skb);
			if (sp)
				sp->olen = 0;
			FUNC19(skb);
			FUNC9(&gro_cells, skb);
			return err;
		}

		return err;
	}

drop_unlock:
	FUNC24(&x->lock);
drop:
	FUNC39(skb, family, x && x->type ? x->type->proto : nexthdr, -1);
	FUNC11(skb);
	return 0;
}