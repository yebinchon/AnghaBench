#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct aa_labelset {int /*<<< orphan*/  lock; } ;
struct aa_label {int size; TYPE_3__** vec; int /*<<< orphan*/  proxy; } ;
struct TYPE_10__ {TYPE_1__* proxy; } ;
struct TYPE_9__ {TYPE_6__ label; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VEC_FLAG_TERMINATE ; 
 struct aa_label* FUNC1 (struct aa_labelset*,struct aa_label*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*,struct aa_label*) ; 
 struct aa_label* FUNC3 (TYPE_6__*) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 struct aa_label* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC6 (struct aa_labelset*,struct aa_label*) ; 
 scalar_t__ FUNC7 (TYPE_3__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct aa_label*,struct aa_label*) ; 
 TYPE_2__* FUNC9 (struct aa_label*) ; 
 struct aa_labelset* FUNC10 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct aa_label *FUNC14(struct aa_label *label)
{
	struct aa_label *new, *tmp;
	struct aa_labelset *ls;
	unsigned long flags;
	int i, invcount = 0;

	FUNC0(!label);
	FUNC0(!FUNC11(&FUNC9(label)->lock));

	new = FUNC5(label->size, label->proxy, GFP_KERNEL);
	if (!new)
		return NULL;

	/*
	 * while holding the ns_lock will stop profile replacement, removal,
	 * and label updates, label merging and removal can be occurring
	 */
	ls = FUNC10(label);
	FUNC12(&ls->lock, flags);
	for (i = 0; i < label->size; i++) {
		FUNC0(!label->vec[i]);
		new->vec[i] = FUNC4(label->vec[i]);
		FUNC0(!new->vec[i]);
		FUNC0(!new->vec[i]->label.proxy);
		FUNC0(!new->vec[i]->label.proxy->label);
		if (new->vec[i]->label.proxy != label->vec[i]->label.proxy)
			invcount++;
	}

	/* updated stale label by being removed/renamed from labelset */
	if (invcount) {
		new->size -= FUNC7(&new->vec[0], new->size,
					   VEC_FLAG_TERMINATE);
		/* TODO: deal with reference labels */
		if (new->size == 1) {
			tmp = FUNC3(&new->vec[0]->label);
			FUNC0(tmp == label);
			goto remove;
		}
		if (FUNC10(label) != FUNC10(new)) {
			FUNC13(&ls->lock, flags);
			tmp = FUNC6(FUNC10(new), new);
			FUNC12(&ls->lock, flags);
			goto remove;
		}
	} else
		FUNC0(FUNC9(label) != FUNC9(new));

	tmp = FUNC1(FUNC10(label), new, true);
remove:
	/* ensure label is removed, and redirected correctly */
	FUNC2(label, tmp);
	FUNC13(&ls->lock, flags);
	FUNC8(tmp, new);

	return tmp;
}