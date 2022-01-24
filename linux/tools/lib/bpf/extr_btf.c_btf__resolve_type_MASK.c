#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct btf_type {int type; } ;
struct btf {int dummy; } ;
typedef  int __u32 ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_RESOLVE_DEPTH ; 
 struct btf_type* FUNC0 (struct btf const*,int) ; 
 scalar_t__ FUNC1 (struct btf_type const*) ; 
 scalar_t__ FUNC2 (struct btf_type const*) ; 
 scalar_t__ FUNC3 (struct btf_type const*) ; 
 scalar_t__ FUNC4 (struct btf_type const*) ; 

int FUNC5(const struct btf *btf, __u32 type_id)
{
	const struct btf_type *t;
	int depth = 0;

	t = FUNC0(btf, type_id);
	while (depth < MAX_RESOLVE_DEPTH &&
	       !FUNC4(t) &&
	       (FUNC1(t) || FUNC2(t) || FUNC3(t))) {
		type_id = t->type;
		t = FUNC0(btf, type_id);
		depth++;
	}

	if (depth == MAX_RESOLVE_DEPTH || FUNC4(t))
		return -EINVAL;

	return type_id;
}