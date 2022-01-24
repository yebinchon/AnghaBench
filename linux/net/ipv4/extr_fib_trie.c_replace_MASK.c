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
struct trie {int dummy; } ;
struct key_vector {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_vector*,struct key_vector*) ; 
 unsigned long FUNC1 (struct key_vector*) ; 
 struct key_vector* FUNC2 (struct key_vector*,unsigned long) ; 
 struct key_vector* FUNC3 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC4 (struct key_vector*,int /*<<< orphan*/ ,struct key_vector*) ; 
 struct key_vector* FUNC5 (struct trie*,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC6 (struct key_vector*) ; 
 scalar_t__ FUNC7 (struct key_vector*,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC8 (struct key_vector*) ; 

__attribute__((used)) static struct key_vector *FUNC9(struct trie *t,
				  struct key_vector *oldtnode,
				  struct key_vector *tn)
{
	struct key_vector *tp = FUNC3(oldtnode);
	unsigned long i;

	/* setup the parent pointer out of and back into this node */
	FUNC0(tn, tp);
	FUNC4(tp, tn->key, tn);

	/* update all of the child parent pointers */
	FUNC8(tn);

	/* all pointers should be clean so we are done */
	FUNC6(oldtnode);

	/* resize children now that oldtnode is freed */
	for (i = FUNC1(tn); i;) {
		struct key_vector *inode = FUNC2(tn, --i);

		/* resize child node */
		if (FUNC7(tn, inode))
			tn = FUNC5(t, inode);
	}

	return tp;
}