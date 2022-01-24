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
typedef  unsigned int t_key ;
struct tnode {int full_children; unsigned long empty_children; struct key_vector* kv; } ;
struct key_vector {unsigned int key; int pos; int bits; int slen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int KEYLENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct tnode*,int /*<<< orphan*/ ,int) ; 
 struct tnode* FUNC3 (int) ; 

__attribute__((used)) static struct key_vector *FUNC4(t_key key, int pos, int bits)
{
	unsigned int shift = pos + bits;
	struct key_vector *tn;
	struct tnode *tnode;

	/* verify bits and pos their msb bits clear and values are valid */
	FUNC0(!bits || (shift > KEYLENGTH));

	tnode = FUNC3(bits);
	if (!tnode)
		return NULL;

	FUNC2("AT %p s=%zu %zu\n", tnode, FUNC1(0),
		 sizeof(struct key_vector *) << bits);

	if (bits == KEYLENGTH)
		tnode->full_children = 1;
	else
		tnode->empty_children = 1ul << bits;

	tn = tnode->kv;
	tn->key = (shift < KEYLENGTH) ? (key >> shift) << shift : 0;
	tn->pos = pos;
	tn->bits = bits;
	tn->slen = pos;

	return tn;
}