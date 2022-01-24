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
struct hdac_widget_tree {int /*<<< orphan*/  root; int /*<<< orphan*/  afg; int /*<<< orphan*/ * nodes; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct hdac_device {int num_nodes; scalar_t__ afg; scalar_t__ start_nid; TYPE_1__ dev; struct hdac_widget_tree* widgets; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdac_widget_tree* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  widget_afg_group ; 
 int /*<<< orphan*/  widget_node_group ; 

__attribute__((used)) static int FUNC5(struct hdac_device *codec)
{
	struct hdac_widget_tree *tree;
	int i, err;
	hda_nid_t nid;

	tree = codec->widgets = FUNC4(sizeof(*tree), GFP_KERNEL);
	if (!tree)
		return -ENOMEM;

	tree->root = FUNC2("widgets", &codec->dev.kobj);
	if (!tree->root)
		return -ENOMEM;

	tree->nodes = FUNC1(codec->num_nodes + 1, sizeof(*tree->nodes),
			      GFP_KERNEL);
	if (!tree->nodes)
		return -ENOMEM;

	for (i = 0, nid = codec->start_nid; i < codec->num_nodes; i++, nid++) {
		err = FUNC0(tree->root, nid, &widget_node_group,
				      &tree->nodes[i]);
		if (err < 0)
			return err;
	}

	if (codec->afg) {
		err = FUNC0(tree->root, codec->afg,
				      &widget_afg_group, &tree->afg);
		if (err < 0)
			return err;
	}

	FUNC3(tree->root, KOBJ_CHANGE);
	return 0;
}