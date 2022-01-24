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
struct objagg_obj {int /*<<< orphan*/  refcount; } ;
struct objagg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct objagg_obj*) ; 
 struct objagg_obj* FUNC1 (struct objagg*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC3 (struct objagg*,struct objagg_obj*,int /*<<< orphan*/ ) ; 

struct objagg_obj *FUNC4(struct objagg *objagg, void *obj)
{
	struct objagg_obj *objagg_obj;

	objagg_obj = FUNC1(objagg, obj);
	if (FUNC0(objagg_obj))
		return objagg_obj;
	FUNC2(objagg_obj);
	FUNC3(objagg, objagg_obj, objagg_obj->refcount);
	return objagg_obj;
}