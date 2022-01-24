#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  integrity_failed; int /*<<< orphan*/  replay; int /*<<< orphan*/  replay_window; } ;
struct xfrm_usersa_info {int /*<<< orphan*/  seq; int /*<<< orphan*/  flags; int /*<<< orphan*/  family; int /*<<< orphan*/  reqid; int /*<<< orphan*/  replay_window; int /*<<< orphan*/  mode; int /*<<< orphan*/  saddr; TYPE_2__ stats; int /*<<< orphan*/  curlft; int /*<<< orphan*/  lft; int /*<<< orphan*/  sel; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int /*<<< orphan*/  seq; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  family; int /*<<< orphan*/  reqid; int /*<<< orphan*/  replay_window; int /*<<< orphan*/  mode; int /*<<< orphan*/  saddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  integrity_failed; int /*<<< orphan*/  replay; int /*<<< orphan*/  replay_window; } ;
struct xfrm_state {TYPE_4__ km; TYPE_3__ props; TYPE_1__ stats; int /*<<< orphan*/  curlft; int /*<<< orphan*/  lft; int /*<<< orphan*/  sel; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_usersa_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct xfrm_state *x, struct xfrm_usersa_info *p)
{
	FUNC1(p, 0, sizeof(*p));
	FUNC0(&p->id, &x->id, sizeof(p->id));
	FUNC0(&p->sel, &x->sel, sizeof(p->sel));
	FUNC0(&p->lft, &x->lft, sizeof(p->lft));
	FUNC0(&p->curlft, &x->curlft, sizeof(p->curlft));
	FUNC2(x->stats.replay_window, &p->stats.replay_window);
	FUNC2(x->stats.replay, &p->stats.replay);
	FUNC2(x->stats.integrity_failed, &p->stats.integrity_failed);
	FUNC0(&p->saddr, &x->props.saddr, sizeof(p->saddr));
	p->mode = x->props.mode;
	p->replay_window = x->props.replay_window;
	p->reqid = x->props.reqid;
	p->family = x->props.family;
	p->flags = x->props.flags;
	p->seq = x->km.seq;
}