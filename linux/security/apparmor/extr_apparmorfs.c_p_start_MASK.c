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
typedef  void aa_profile ;
struct aa_ns {int /*<<< orphan*/  level; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 void* FUNC0 (struct aa_ns*,struct aa_ns*) ; 
 struct aa_ns* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct aa_ns*,void*) ; 

__attribute__((used)) static void *FUNC4(struct seq_file *f, loff_t *pos)
{
	struct aa_profile *profile = NULL;
	struct aa_ns *root = FUNC1();
	loff_t l = *pos;
	f->private = root;

	/* find the first profile */
	FUNC2(&root->lock, root->level);
	profile = FUNC0(root, root);

	/* skip to position */
	for (; profile && l > 0; l--)
		profile = FUNC3(root, profile);

	return profile;
}