#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ state; scalar_t__ dying; } ;
struct TYPE_13__ {scalar_t__ v; scalar_t__ m; } ;
struct TYPE_14__ {TYPE_3__ smark; int /*<<< orphan*/  family; } ;
struct TYPE_12__ {scalar_t__ use_time; } ;
struct TYPE_17__ {scalar_t__ encap_type; } ;
struct TYPE_11__ {int /*<<< orphan*/  proto; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_6__ km; scalar_t__ if_id; TYPE_4__ props; TYPE_2__ curlft; int /*<<< orphan*/  mtimer; TYPE_7__ lft; TYPE_7__ sel; TYPE_7__* coaddr; TYPE_7__* encap; TYPE_1__ id; } ;
struct TYPE_15__ {int /*<<< orphan*/  xfrm_state_lock; } ;
struct net {TYPE_5__ xfrm; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL_SOFT ; 
 int /*<<< orphan*/  IPSEC_PROTO_ANY ; 
 scalar_t__ XFRM_STATE_ACQ ; 
 scalar_t__ XFRM_STATE_DEAD ; 
 scalar_t__ XFRM_STATE_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC2 (struct xfrm_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_7__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfrm_state*) ; 
 scalar_t__ FUNC14 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct xfrm_state*) ; 
 struct net* FUNC16 (struct xfrm_state*) ; 

int FUNC17(struct xfrm_state *x)
{
	struct xfrm_state *x1, *to_put;
	int err;
	int use_spi = FUNC11(x->id.proto, IPSEC_PROTO_ANY);
	struct net *net = FUNC16(x);

	to_put = NULL;

	FUNC9(&net->xfrm.xfrm_state_lock);
	x1 = FUNC2(x, use_spi, x->props.family);

	err = -ESRCH;
	if (!x1)
		goto out;

	if (FUNC14(x1)) {
		to_put = x1;
		err = -EEXIST;
		goto out;
	}

	if (x1->km.state == XFRM_STATE_ACQ) {
		FUNC1(x);
		x = NULL;
	}
	err = 0;

out:
	FUNC10(&net->xfrm.xfrm_state_lock);

	if (to_put)
		FUNC15(to_put);

	if (err)
		return err;

	if (!x) {
		FUNC13(x1);
		FUNC15(x1);
		return 0;
	}

	err = -EINVAL;
	FUNC9(&x1->lock);
	if (FUNC6(x1->km.state == XFRM_STATE_VALID)) {
		if (x->encap && x1->encap &&
		    x->encap->encap_type == x1->encap->encap_type)
			FUNC8(x1->encap, x->encap, sizeof(*x1->encap));
		else if (x->encap || x1->encap)
			goto fail;

		if (x->coaddr && x1->coaddr) {
			FUNC8(x1->coaddr, x->coaddr, sizeof(*x1->coaddr));
		}
		if (!use_spi && FUNC7(&x1->sel, &x->sel, sizeof(x1->sel)))
			FUNC8(&x1->sel, &x->sel, sizeof(x1->sel));
		FUNC8(&x1->lft, &x->lft, sizeof(x1->lft));
		x1->km.dying = 0;

		FUNC4(&x1->mtimer, FUNC5(1, 0),
			      HRTIMER_MODE_REL_SOFT);
		if (x1->curlft.use_time)
			FUNC12(x1);

		if (x->props.smark.m || x->props.smark.v || x->if_id) {
			FUNC9(&net->xfrm.xfrm_state_lock);

			if (x->props.smark.m || x->props.smark.v)
				x1->props.smark = x->props.smark;

			if (x->if_id)
				x1->if_id = x->if_id;

			FUNC0(x1);
			FUNC10(&net->xfrm.xfrm_state_lock);
		}

		err = 0;
		x->km.state = XFRM_STATE_DEAD;
		FUNC3(x);
	}

fail:
	FUNC10(&x1->lock);

	FUNC15(x1);

	return err;
}