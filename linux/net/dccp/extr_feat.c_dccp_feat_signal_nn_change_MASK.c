#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct sock {scalar_t__ sk_state; } ;
struct list_head {int dummy; } ;
struct TYPE_5__ {scalar_t__ nn; } ;
struct dccp_feat_entry {TYPE_1__ val; } ;
struct TYPE_6__ {scalar_t__ nn; } ;
typedef  TYPE_2__ dccp_feat_val ;
struct TYPE_7__ {struct list_head dccps_featneg; } ;

/* Variables and functions */
 scalar_t__ DCCP_OPEN ; 
 scalar_t__ DCCP_PARTOPEN ; 
 int EINVAL ; 
 scalar_t__ FEAT_NN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dccp_feat_entry* FUNC1 (struct list_head*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dccp_feat_entry*) ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct list_head*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long long,unsigned long long) ; 
 TYPE_3__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

int FUNC9(struct sock *sk, u8 feat, u64 nn_val)
{
	struct list_head *fn = &FUNC7(sk)->dccps_featneg;
	dccp_feat_val fval = { .nn = nn_val };
	struct dccp_feat_entry *entry;

	if (sk->sk_state != DCCP_OPEN && sk->sk_state != DCCP_PARTOPEN)
		return 0;

	if (FUNC5(feat) != FEAT_NN ||
	    !FUNC0(feat, nn_val))
		return -EINVAL;

	if (nn_val == FUNC3(sk, feat))
		return 0;	/* already set or negotiation under way */

	entry = FUNC1(fn, feat, 1);
	if (entry != NULL) {
		FUNC6("Clobbering existing NN entry %llu -> %llu\n",
			      (unsigned long long)entry->val.nn,
			      (unsigned long long)nn_val);
		FUNC2(entry);
	}

	FUNC8(sk);
	return FUNC4(fn, feat, 1, 0, &fval);
}