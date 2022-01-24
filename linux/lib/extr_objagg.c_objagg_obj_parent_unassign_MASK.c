#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct objagg_obj {TYPE_2__* parent; int /*<<< orphan*/  delta_priv; } ;
struct objagg {int /*<<< orphan*/  priv; TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* delta_destroy ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct objagg*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct objagg*,struct objagg_obj*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct objagg *objagg,
				       struct objagg_obj *objagg_obj)
{
	FUNC2(objagg, objagg_obj,
					 objagg_obj->parent,
					 objagg_obj->parent->refcount);
	objagg->ops->delta_destroy(objagg->priv, objagg_obj->delta_priv);
	FUNC0(objagg, objagg_obj->parent);
}