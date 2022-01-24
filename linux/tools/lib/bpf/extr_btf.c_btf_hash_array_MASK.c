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
struct btf_array {int /*<<< orphan*/  nelems; int /*<<< orphan*/  index_type; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 struct btf_array* FUNC0 (struct btf_type*) ; 
 long FUNC1 (struct btf_type*) ; 
 long FUNC2 (long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC3(struct btf_type *t)
{
	const struct btf_array *info = FUNC0(t);
	long h = FUNC1(t);

	h = FUNC2(h, info->type);
	h = FUNC2(h, info->index_type);
	h = FUNC2(h, info->nelems);
	return h;
}