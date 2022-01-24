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
struct objagg_obj {int /*<<< orphan*/  root_priv; } ;
struct objagg {int /*<<< orphan*/  priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* root_destroy ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct objagg*,struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct objagg*,struct objagg_obj*) ; 

__attribute__((used)) static void FUNC3(struct objagg *objagg,
				    struct objagg_obj *objagg_obj)
{
	FUNC2(objagg, objagg_obj);
	objagg->ops->root_destroy(objagg->priv, objagg_obj->root_priv);
	FUNC0(objagg, objagg_obj);
}