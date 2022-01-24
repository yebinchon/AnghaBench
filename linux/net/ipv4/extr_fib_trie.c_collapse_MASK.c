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
 unsigned long FUNC0 (struct key_vector*) ; 
 struct key_vector* FUNC1 (struct key_vector*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct key_vector*) ; 
 struct key_vector* FUNC3 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC4 (struct key_vector*,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC5 (struct key_vector*,int /*<<< orphan*/ ,struct key_vector*) ; 

__attribute__((used)) static struct key_vector *FUNC6(struct trie *t,
				   struct key_vector *oldtnode)
{
	struct key_vector *n, *tp;
	unsigned long i;

	/* scan the tnode looking for that one child that might still exist */
	for (n = NULL, i = FUNC0(oldtnode); !n && i;)
		n = FUNC1(oldtnode, --i);

	/* compress one level */
	tp = FUNC3(oldtnode);
	FUNC5(tp, oldtnode->key, n);
	FUNC4(n, tp);

	/* drop dead node */
	FUNC2(oldtnode);

	return tp;
}