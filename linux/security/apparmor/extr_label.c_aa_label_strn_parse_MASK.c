#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct aa_label {int size; int /*<<< orphan*/ * vec; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_14__ {TYPE_1__* unconfined; } ;
struct TYPE_13__ {scalar_t__ ns; struct aa_label label; } ;
struct TYPE_12__ {struct aa_label label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct aa_label* FUNC2 (int) ; 
 int /*<<< orphan*/  VEC_FLAG_TERMINATE ; 
 struct aa_label* FUNC3 (struct aa_label*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,int) ; 
 struct aa_label* FUNC6 (TYPE_2__**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__**,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (struct aa_label*,struct aa_label*,char const*,int) ; 
 int FUNC9 (char const*,int) ; 
 scalar_t__ FUNC10 (struct aa_label*) ; 
 int /*<<< orphan*/  profile ; 
 TYPE_6__* root_ns ; 
 char* FUNC11 (char const*,size_t) ; 
 TYPE_2__** vec ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__**,int) ; 
 struct aa_label* FUNC13 (TYPE_2__**,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_2__**,int,int /*<<< orphan*/ ) ; 

struct aa_label *FUNC15(struct aa_label *base, const char *str,
				     size_t n, gfp_t gfp, bool create,
				     bool force_stack)
{
	FUNC1(profile, vec);
	struct aa_label *label, *currbase = base;
	int i, len, stack = 0, error;
	const char *end = str + n;
	const char *split;

	FUNC0(!base);
	FUNC0(!str);

	str = FUNC11(str, n);
	if (str == NULL || (*str == '=' && base != &root_ns->unconfined->label))
		return FUNC2(-EINVAL);

	len = FUNC9(str, end - str);
	if (*str == '&' || force_stack) {
		/* stack on top of base */
		stack = base->size;
		len += stack;
		if (*str == '&')
			str++;
	}

	error = FUNC14(profile, vec, len, gfp);
	if (error)
		return FUNC2(error);

	for (i = 0; i < stack; i++)
		vec[i] = FUNC4(base->vec[i]);

	for (split = FUNC5(str, end - str), i = stack;
	     split && i < len; i++) {
		vec[i] = FUNC8(base, currbase, str, split - str);
		if (!vec[i])
			goto fail;
		/*
		 * if component specified a new ns it becomes the new base
		 * so that subsequent lookups are relative to it
		 */
		if (vec[i]->ns != FUNC10(currbase))
			currbase = &vec[i]->label;
		str = split + 3;
		split = FUNC5(str, end - str);
	}
	/* last element doesn't have a split */
	if (i < len) {
		vec[i] = FUNC8(base, currbase, str, end - str);
		if (!vec[i])
			goto fail;
	}
	if (len == 1)
		/* no need to free vec as len < LOCAL_VEC_ENTRIES */
		return &vec[0]->label;

	len -= FUNC7(vec, len, VEC_FLAG_TERMINATE);
	/* TODO: deal with reference labels */
	if (len == 1) {
		label = FUNC3(&vec[0]->label);
		goto out;
	}

	if (create)
		label = FUNC6(vec, len, gfp);
	else
		label = FUNC13(vec, len);
	if (!label)
		goto fail;

out:
	/* use adjusted len from after vec_unique, not original */
	FUNC12(profile, vec, len);
	return label;

fail:
	label = FUNC2(-ENOENT);
	goto out;
}