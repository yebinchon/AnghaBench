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
struct btf_type {int dummy; } ;
struct btf_array {scalar_t__ type; scalar_t__ index_type; scalar_t__ nelems; } ;

/* Variables and functions */
 struct btf_array* FUNC0 (struct btf_type*) ; 
 int /*<<< orphan*/  FUNC1 (struct btf_type*,struct btf_type*) ; 

__attribute__((used)) static bool FUNC2(struct btf_type *t1, struct btf_type *t2)
{
	const struct btf_array *info1, *info2;

	if (!FUNC1(t1, t2))
		return false;

	info1 = FUNC0(t1);
	info2 = FUNC0(t2);
	return info1->type == info2->type &&
	       info1->index_type == info2->index_type &&
	       info1->nelems == info2->nelems;
}