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
struct btf_type {scalar_t__ name_off; int info; scalar_t__ size; } ;

/* Variables and functions */
 int FUNC0 (struct btf_type*,struct btf_type*) ; 
 int /*<<< orphan*/  FUNC1 (struct btf_type*) ; 

__attribute__((used)) static bool FUNC2(struct btf_type *t1, struct btf_type *t2)
{
	if (!FUNC1(t1) && !FUNC1(t2))
		return FUNC0(t1, t2);
	/* ignore vlen when comparing */
	return t1->name_off == t2->name_off &&
	       (t1->info & ~0xffff) == (t2->info & ~0xffff) &&
	       t1->size == t2->size;
}