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
struct xfrm_tmpl {int dummy; } ;
struct xfrm_policy {int xfrm_nr; int /*<<< orphan*/  xfrm_vec; int /*<<< orphan*/  family; int /*<<< orphan*/  type; int /*<<< orphan*/  index; int /*<<< orphan*/  flags; int /*<<< orphan*/  action; int /*<<< orphan*/  if_id; int /*<<< orphan*/  mark; int /*<<< orphan*/  curlft; int /*<<< orphan*/  lft; int /*<<< orphan*/  security; int /*<<< orphan*/  selector; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_policy*,int) ; 
 struct net* FUNC8 (struct xfrm_policy const*) ; 

__attribute__((used)) static struct xfrm_policy *FUNC9(const struct xfrm_policy *old, int dir)
{
	struct xfrm_policy *newp = FUNC6(FUNC8(old), GFP_ATOMIC);
	struct net *net = FUNC8(old);

	if (newp) {
		newp->selector = old->selector;
		if (FUNC2(old->security,
					       &newp->security)) {
			FUNC0(newp);
			return NULL;  /* ENOMEM */
		}
		newp->lft = old->lft;
		newp->curlft = old->curlft;
		newp->mark = old->mark;
		newp->if_id = old->if_id;
		newp->action = old->action;
		newp->flags = old->flags;
		newp->xfrm_nr = old->xfrm_nr;
		newp->index = old->index;
		newp->type = old->type;
		newp->family = old->family;
		FUNC1(newp->xfrm_vec, old->xfrm_vec,
		       newp->xfrm_nr*sizeof(struct xfrm_tmpl));
		FUNC3(&net->xfrm.xfrm_policy_lock);
		FUNC7(newp, dir);
		FUNC4(&net->xfrm.xfrm_policy_lock);
		FUNC5(newp);
	}
	return newp;
}