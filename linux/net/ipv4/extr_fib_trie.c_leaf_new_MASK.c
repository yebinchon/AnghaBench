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
typedef  int /*<<< orphan*/  t_key ;
struct tnode {struct key_vector* kv; } ;
struct key_vector {int /*<<< orphan*/  leaf; int /*<<< orphan*/  slen; scalar_t__ bits; scalar_t__ pos; int /*<<< orphan*/  key; } ;
struct fib_alias {int /*<<< orphan*/  fa_list; int /*<<< orphan*/  fa_slen; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tnode* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trie_leaf_kmem ; 

__attribute__((used)) static struct key_vector *FUNC3(t_key key, struct fib_alias *fa)
{
	struct key_vector *l;
	struct tnode *kv;

	kv = FUNC2(trie_leaf_kmem, GFP_KERNEL);
	if (!kv)
		return NULL;

	/* initialize key vector */
	l = kv->kv;
	l->key = key;
	l->pos = 0;
	l->bits = 0;
	l->slen = fa->fa_slen;

	/* link leaf to fib alias */
	FUNC0(&l->leaf);
	FUNC1(&fa->fa_list, &l->leaf);

	return l;
}