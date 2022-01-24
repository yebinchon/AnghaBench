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
struct world {int /*<<< orphan*/ * key_refs; struct objagg_obj** objagg_objs; } ;
struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct objagg*,struct objagg_obj*) ; 

__attribute__((used)) static void FUNC2(struct world *world, struct objagg *objagg,
			  unsigned int key_id)
{
	struct objagg_obj *objagg_obj;

	if (!world->key_refs[FUNC0(key_id)])
		return;
	objagg_obj = world->objagg_objs[FUNC0(key_id)];
	FUNC1(objagg, objagg_obj);
	world->key_refs[FUNC0(key_id)]--;
}