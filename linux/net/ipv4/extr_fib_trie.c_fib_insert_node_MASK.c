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
typedef  int t_key ;
struct trie {int dummy; } ;
struct key_vector {int key; } ;
struct fib_alias {int /*<<< orphan*/  fa_slen; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct key_vector*,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct key_vector* FUNC2 (struct key_vector*,int) ; 
 int FUNC3 (int,struct key_vector*) ; 
 struct key_vector* FUNC4 (int,struct fib_alias*) ; 
 int /*<<< orphan*/  FUNC5 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC6 (struct key_vector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct key_vector*,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC8 (struct key_vector*,int,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC9 (struct key_vector*,int,struct key_vector*) ; 
 struct key_vector* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct trie*,struct key_vector*) ; 

__attribute__((used)) static int FUNC12(struct trie *t, struct key_vector *tp,
			   struct fib_alias *new, t_key key)
{
	struct key_vector *n, *l;

	l = FUNC4(key, new);
	if (!l)
		goto noleaf;

	/* retrieve child from parent node */
	n = FUNC2(tp, FUNC3(key, tp));

	/* Case 2: n is a LEAF or a TNODE and the key doesn't match.
	 *
	 *  Add a new tnode here
	 *  first tnode need some special handling
	 *  leaves us in position for handling as case 3
	 */
	if (n) {
		struct key_vector *tn;

		tn = FUNC10(key, FUNC1(key ^ n->key), 1);
		if (!tn)
			goto notnode;

		/* initialize routes out of node */
		FUNC0(tn, tp);
		FUNC8(tn, FUNC3(key, tn) ^ 1, n);

		/* start adding routes into the node */
		FUNC9(tp, key, tn);
		FUNC7(n, tn);

		/* parent now has a NULL spot where the leaf can go */
		tp = tn;
	}

	/* Case 3: n is NULL, and will just insert a new leaf */
	FUNC6(tp, new->fa_slen);
	FUNC0(l, tp);
	FUNC9(tp, key, l);
	FUNC11(t, tp);

	return 0;
notnode:
	FUNC5(l);
noleaf:
	return -ENOMEM;
}