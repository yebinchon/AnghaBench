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
union kernfs_node_id {scalar_t__ generation; int /*<<< orphan*/  ino; } ;
struct kernfs_root {int dummy; } ;
struct TYPE_2__ {scalar_t__ generation; } ;
struct kernfs_node {TYPE_1__ id; } ;

/* Variables and functions */
 struct kernfs_node* FUNC0 (struct kernfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 

struct kernfs_node *FUNC2(struct kernfs_root *root,
	const union kernfs_node_id *id)
{
	struct kernfs_node *kn;

	kn = FUNC0(root, id->ino);
	if (!kn)
		return NULL;
	if (kn->id.generation != id->generation) {
		FUNC1(kn);
		return NULL;
	}
	return kn;
}