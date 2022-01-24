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
struct xfrm_state {TYPE_1__* type; scalar_t__ type_offload; int /*<<< orphan*/  preplay_esn; int /*<<< orphan*/  replay_esn; int /*<<< orphan*/  coaddr; int /*<<< orphan*/  encap; int /*<<< orphan*/  calg; int /*<<< orphan*/  ealg; int /*<<< orphan*/  aalg; int /*<<< orphan*/  aead; int /*<<< orphan*/  rtimer; int /*<<< orphan*/  mtimer; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destructor ) (struct xfrm_state*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_state*) ; 

__attribute__((used)) static void FUNC9(struct xfrm_state *x)
{
	FUNC1(&x->mtimer);
	FUNC0(&x->rtimer);
	FUNC2(x->aead);
	FUNC2(x->aalg);
	FUNC2(x->ealg);
	FUNC2(x->calg);
	FUNC2(x->encap);
	FUNC2(x->coaddr);
	FUNC2(x->replay_esn);
	FUNC2(x->preplay_esn);
	if (x->type_offload)
		FUNC7(x->type_offload);
	if (x->type) {
		x->type->destructor(x);
		FUNC6(x->type);
	}
	FUNC5(x);
	FUNC3(x);
	FUNC8(x);
}