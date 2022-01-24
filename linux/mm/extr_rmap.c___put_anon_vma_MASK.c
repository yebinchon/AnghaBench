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
struct anon_vma {int /*<<< orphan*/  refcount; struct anon_vma* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct anon_vma*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct anon_vma *anon_vma)
{
	struct anon_vma *root = anon_vma->root;

	FUNC0(anon_vma);
	if (root != anon_vma && FUNC1(&root->refcount))
		FUNC0(root);
}