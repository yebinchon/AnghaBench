#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* data; TYPE_2__* rodata; } ;
struct bpf_object {size_t nr_maps; size_t nr_programs; int /*<<< orphan*/  list; TYPE_2__* programs; TYPE_2__* maps; TYPE_1__ sections; int /*<<< orphan*/  btf_ext; int /*<<< orphan*/  btf; int /*<<< orphan*/  priv; int /*<<< orphan*/  (* clear_priv ) (struct bpf_object*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* clear_priv ) (TYPE_2__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * priv; struct TYPE_6__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**) ; 

void FUNC10(struct bpf_object *obj)
{
	size_t i;

	if (!obj)
		return;

	if (obj->clear_priv)
		obj->clear_priv(obj, obj->priv);

	FUNC0(obj);
	FUNC1(obj);
	FUNC3(obj->btf);
	FUNC4(obj->btf_ext);

	for (i = 0; i < obj->nr_maps; i++) {
		FUNC9(&obj->maps[i].name);
		if (obj->maps[i].clear_priv)
			obj->maps[i].clear_priv(&obj->maps[i],
						obj->maps[i].priv);
		obj->maps[i].priv = NULL;
		obj->maps[i].clear_priv = NULL;
	}

	FUNC9(&obj->sections.rodata);
	FUNC9(&obj->sections.data);
	FUNC9(&obj->maps);
	obj->nr_maps = 0;

	if (obj->programs && obj->nr_programs) {
		for (i = 0; i < obj->nr_programs; i++)
			FUNC2(&obj->programs[i]);
	}
	FUNC9(&obj->programs);

	FUNC6(&obj->list);
	FUNC5(obj);
}