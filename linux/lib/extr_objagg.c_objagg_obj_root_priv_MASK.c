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
struct objagg_obj {void const* root_priv; struct objagg_obj const* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct objagg_obj const*) ; 

const void *FUNC2(const struct objagg_obj *objagg_obj)
{
	if (FUNC1(objagg_obj))
		return objagg_obj->root_priv;
	FUNC0(!FUNC1(objagg_obj->parent));
	return objagg_obj->parent->root_priv;
}