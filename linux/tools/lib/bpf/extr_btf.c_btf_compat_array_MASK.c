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
struct btf_type {int dummy; } ;
struct TYPE_2__ {scalar_t__ nelems; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct btf_type*) ; 
 int /*<<< orphan*/  FUNC1 (struct btf_type*,struct btf_type*) ; 

__attribute__((used)) static bool FUNC2(struct btf_type *t1, struct btf_type *t2)
{
	if (!FUNC1(t1, t2))
		return false;

	return FUNC0(t1)->nelems == FUNC0(t2)->nelems;
}