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
struct hmap_elem {int* var; int /*<<< orphan*/  lock; } ;
struct array_elem {int* var; int /*<<< orphan*/  lock; } ;
struct __sk_buff {int dummy; } ;

/* Variables and functions */
 int VAR_NUM ; 
 int /*<<< orphan*/  array_map ; 
 int FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hash_map ; 

int FUNC4(struct __sk_buff *skb)
{
	struct hmap_elem zero = {}, *val;
	int rnd = FUNC0();
	int key = 0, err = 1, i;
	struct array_elem *q;

	val = FUNC1(&hash_map, &key);
	if (!val)
		goto err;
	/* spin_lock in hash map */
	FUNC2(&val->lock);
	for (i = 0; i < VAR_NUM; i++)
		val->var[i] = rnd;
	FUNC3(&val->lock);

	/* spin_lock in array */
	q = FUNC1(&array_map, &key);
	if (!q)
		goto err;
	FUNC2(&q->lock);
	for (i = 0; i < VAR_NUM; i++)
		q->var[i] = rnd;
	FUNC3(&q->lock);
	err = 0;
err:
	return err;
}