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
 int /*<<< orphan*/  FUNC0 (struct objagg*,struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC1 (struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct objagg*,struct objagg_obj*,int /*<<< orphan*/ ) ; 

void FUNC3(struct objagg *objagg, struct objagg_obj *objagg_obj)
{
	FUNC2(objagg, objagg_obj, objagg_obj->refcount);
	FUNC1(objagg_obj);
	FUNC0(objagg, objagg_obj);
}