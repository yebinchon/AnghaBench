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
struct hmap_elem {int cnt; int /*<<< orphan*/  lock; } ;
struct cls_elem {int /*<<< orphan*/  lock; int /*<<< orphan*/  cnt; } ;
struct bpf_vqueue {int volatile credit; unsigned long long lasttime; int /*<<< orphan*/  lock; int /*<<< orphan*/  rate; } ;
struct __sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long long,int /*<<< orphan*/ ) ; 
 struct cls_elem* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,struct hmap_elem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cls_map ; 
 int /*<<< orphan*/  hmap ; 
 int /*<<< orphan*/  vqueue ; 

int FUNC7(struct __sk_buff *skb)
{
	volatile int credit = 0, max_credit = 100, pkt_len = 64;
	struct hmap_elem zero = {}, *val;
	unsigned long long curtime;
	struct bpf_vqueue *q;
	struct cls_elem *cls;
	int key = 0;
	int err = 0;

	val = FUNC3(&hmap, &key);
	if (!val) {
		FUNC4(&hmap, &key, &zero, 0);
		val = FUNC3(&hmap, &key);
		if (!val) {
			err = 1;
			goto err;
		}
	}
	/* spin_lock in hash map run time test */
	FUNC5(&val->lock);
	if (val->cnt)
		val->cnt--;
	else
		val->cnt++;
	if (val->cnt != 0 && val->cnt != 1)
		err = 1;
	FUNC6(&val->lock);

	/* spin_lock in array. virtual queue demo */
	q = FUNC3(&vqueue, &key);
	if (!q)
		goto err;
	curtime = FUNC2();
	FUNC5(&q->lock);
	q->credit += FUNC0(curtime - q->lasttime, q->rate);
	q->lasttime = curtime;
	if (q->credit > max_credit)
		q->credit = max_credit;
	q->credit -= pkt_len;
	credit = q->credit;
	FUNC6(&q->lock);

	/* spin_lock in cgroup local storage */
	cls = FUNC1(&cls_map, 0);
	FUNC5(&cls->lock);
	cls->cnt++;
	FUNC6(&cls->lock);

err:
	return err;
}