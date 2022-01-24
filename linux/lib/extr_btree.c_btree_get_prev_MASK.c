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
struct btree_head {int height; unsigned long* node; } ;
struct btree_geo {int no_pairs; int /*<<< orphan*/  keylen; } ;

/* Variables and functions */
 int MAX_KEYLEN ; 
 unsigned long* FUNC0 (struct btree_geo*,unsigned long*,int) ; 
 void* FUNC1 (struct btree_geo*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_geo*,unsigned long*) ; 
 scalar_t__ FUNC3 (struct btree_geo*,unsigned long*,int,unsigned long*) ; 
 scalar_t__ FUNC4 (struct btree_geo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,unsigned long*,int /*<<< orphan*/ ) ; 

void *FUNC6(struct btree_head *head, struct btree_geo *geo,
		     unsigned long *__key)
{
	int i, height;
	unsigned long *node, *oldnode;
	unsigned long *retry_key = NULL, key[MAX_KEYLEN];

	if (FUNC4(geo, __key))
		return NULL;

	if (head->height == 0)
		return NULL;
	FUNC5(key, __key, geo->keylen);
retry:
	FUNC2(geo, key);

	node = head->node;
	for (height = head->height ; height > 1; height--) {
		for (i = 0; i < geo->no_pairs; i++)
			if (FUNC3(geo, node, i, key) <= 0)
				break;
		if (i == geo->no_pairs)
			goto miss;
		oldnode = node;
		node = FUNC1(geo, node, i);
		if (!node)
			goto miss;
		retry_key = FUNC0(geo, oldnode, i);
	}

	if (!node)
		goto miss;

	for (i = 0; i < geo->no_pairs; i++) {
		if (FUNC3(geo, node, i, key) <= 0) {
			if (FUNC1(geo, node, i)) {
				FUNC5(__key, FUNC0(geo, node, i), geo->keylen);
				return FUNC1(geo, node, i);
			} else
				goto miss;
		}
	}
miss:
	if (retry_key) {
		FUNC5(key, retry_key, geo->keylen);
		retry_key = NULL;
		goto retry;
	}
	return NULL;
}