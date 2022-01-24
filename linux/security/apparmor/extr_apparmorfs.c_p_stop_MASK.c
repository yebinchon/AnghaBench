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
struct seq_file {struct aa_ns* private; } ;
struct aa_profile {struct aa_ns* ns; } ;
struct aa_ns {int /*<<< orphan*/  lock; struct aa_ns* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct seq_file *f, void *p)
{
	struct aa_profile *profile = p;
	struct aa_ns *root = f->private, *ns;

	if (profile) {
		for (ns = profile->ns; ns && ns != root; ns = ns->parent)
			FUNC1(&ns->lock);
	}
	FUNC1(&root->lock);
	FUNC0(root);
}