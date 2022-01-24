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
struct nilfs_btree_node {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 scalar_t__ NILFS_BTREE_LEVEL_NODE_MIN ; 
 scalar_t__ FUNC0 (struct nilfs_btree_node const*,int) ; 
 scalar_t__ FUNC1 (struct nilfs_btree_node const*) ; 
 int FUNC2 (struct nilfs_btree_node const*) ; 

__attribute__((used)) static int FUNC3(const struct nilfs_btree_node *node,
				   __u64 key, int *indexp)
{
	__u64 nkey;
	int index, low, high, s;

	/* binary search */
	low = 0;
	high = FUNC2(node) - 1;
	index = 0;
	s = 0;
	while (low <= high) {
		index = (low + high) / 2;
		nkey = FUNC0(node, index);
		if (nkey == key) {
			s = 0;
			goto out;
		} else if (nkey < key) {
			low = index + 1;
			s = -1;
		} else {
			high = index - 1;
			s = 1;
		}
	}

	/* adjust index */
	if (FUNC1(node) > NILFS_BTREE_LEVEL_NODE_MIN) {
		if (s > 0 && index > 0)
			index--;
	} else if (s < 0)
		index++;

 out:
	*indexp = index;

	return s == 0;
}