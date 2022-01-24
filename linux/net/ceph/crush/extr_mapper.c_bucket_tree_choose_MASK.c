#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* items; int /*<<< orphan*/  id; int /*<<< orphan*/  hash; } ;
struct crush_bucket_tree {int num_nodes; int* node_weights; TYPE_1__ h; } ;
typedef  int __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const struct crush_bucket_tree *bucket,
			      int x, int r)
{
	int n;
	__u32 w;
	__u64 t;

	/* start at root */
	n = bucket->num_nodes >> 1;

	while (!FUNC3(n)) {
		int l;
		/* pick point in [0, w) */
		w = bucket->node_weights[n];
		t = (__u64)FUNC0(bucket->h.hash, x, n, r,
					  bucket->h.id) * (__u64)w;
		t = t >> 32;

		/* descend to the left or right? */
		l = FUNC1(n);
		if (t < bucket->node_weights[l])
			n = l;
		else
			n = FUNC2(n);
	}

	return bucket->h.items[n >> 1];
}