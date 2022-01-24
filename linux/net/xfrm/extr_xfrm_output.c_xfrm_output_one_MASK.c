#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_7__ {int flags; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_6__* type; TYPE_5__* type_offload; TYPE_4__ curlft; TYPE_3__* repl; TYPE_2__ km; TYPE_1__ outer_mode; } ;
struct sk_buff {scalar_t__ encapsulation; scalar_t__ len; int /*<<< orphan*/  mark; } ;
struct net {int dummy; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;
struct TYPE_12__ {int (* output ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  (* encap ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct TYPE_9__ {int (* overflow ) (struct xfrm_state*,struct sk_buff*) ;} ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATEEXPIRED ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATEINVALID ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATEMODEERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATEPROTOERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTSTATESEQERROR ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int XFRM_MODE_FLAG_TUNNEL ; 
 scalar_t__ XFRM_STATE_VALID ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct dst_entry* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct dst_entry* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct xfrm_state*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC10 (struct xfrm_state*,struct sk_buff*) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct xfrm_state*,struct sk_buff*) ; 
 int FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct xfrm_state*) ; 
 int FUNC16 (struct xfrm_state*) ; 
 struct net* FUNC17 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, int err)
{
	struct dst_entry *dst = FUNC2(skb);
	struct xfrm_state *x = dst->xfrm;
	struct net *net = FUNC17(x);

	if (err <= 0)
		goto resume;

	do {
		err = FUNC14(skb);
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTERROR);
			goto error_nolock;
		}

		skb->mark = FUNC15(skb->mark, x);

		err = FUNC13(x, skb);
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTSTATEMODEERROR);
			goto error_nolock;
		}

		FUNC6(&x->lock);

		if (FUNC11(x->km.state != XFRM_STATE_VALID)) {
			FUNC0(net, LINUX_MIB_XFRMOUTSTATEINVALID);
			err = -EINVAL;
			goto error;
		}

		err = FUNC16(x);
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTSTATEEXPIRED);
			goto error;
		}

		err = x->repl->overflow(x, skb);
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTSTATESEQERROR);
			goto error;
		}

		x->curlft.bytes += skb->len;
		x->curlft.packets++;

		FUNC7(&x->lock);

		FUNC3(skb);
		if (!FUNC2(skb)) {
			FUNC0(net, LINUX_MIB_XFRMOUTERROR);
			err = -EHOSTUNREACH;
			goto error_nolock;
		}

		if (FUNC12(skb)) {
			x->type_offload->encap(x, skb);
		} else {
			/* Inner headers are invalid now. */
			skb->encapsulation = 0;

			err = x->type->output(x, skb);
			if (err == -EINPROGRESS)
				goto out;
		}

resume:
		if (err) {
			FUNC0(net, LINUX_MIB_XFRMOUTSTATEPROTOERROR);
			goto error_nolock;
		}

		dst = FUNC4(skb);
		if (!dst) {
			FUNC0(net, LINUX_MIB_XFRMOUTERROR);
			err = -EHOSTUNREACH;
			goto error_nolock;
		}
		FUNC5(skb, dst);
		x = dst->xfrm;
	} while (x && !(x->outer_mode.flags & XFRM_MODE_FLAG_TUNNEL));

	return 0;

error:
	FUNC7(&x->lock);
error_nolock:
	FUNC1(skb);
out:
	return err;
}