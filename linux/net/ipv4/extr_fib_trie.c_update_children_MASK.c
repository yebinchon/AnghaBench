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
struct key_vector {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct key_vector*) ; 
 struct key_vector* FUNC1 (struct key_vector*,unsigned long) ; 
 struct key_vector* FUNC2 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC3 (struct key_vector*,struct key_vector*) ; 

__attribute__((used)) static void FUNC4(struct key_vector *tn)
{
	unsigned long i;

	/* update all of the child parent pointers */
	for (i = FUNC0(tn); i;) {
		struct key_vector *inode = FUNC1(tn, --i);

		if (!inode)
			continue;

		/* Either update the children of a tnode that
		 * already belongs to us or update the child
		 * to point to ourselves.
		 */
		if (FUNC2(inode) == tn)
			FUNC4(inode);
		else
			FUNC3(inode, tn);
	}
}