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
typedef  int /*<<< orphan*/  uint8_t ;
struct tlpm_node {size_t n_bits; struct tlpm_node* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tlpm_node*) ; 
 struct tlpm_node* FUNC2 (struct tlpm_node*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static struct tlpm_node *FUNC3(struct tlpm_node *list,
				     const uint8_t *key,
				     size_t n_bits)
{
	struct tlpm_node *best = FUNC2(list, key, n_bits);
	struct tlpm_node *node;

	if (!best || best->n_bits != n_bits)
		return list;

	if (best == list) {
		node = best->next;
		FUNC1(best);
		return node;
	}

	for (node = list; node; node = node->next) {
		if (node->next == best) {
			node->next = best->next;
			FUNC1(best);
			return list;
		}
	}
	/* should never get here */
	FUNC0(0);
	return list;
}