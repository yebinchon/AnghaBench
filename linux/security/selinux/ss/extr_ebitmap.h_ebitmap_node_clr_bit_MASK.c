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
struct ebitmap_node {unsigned int* maps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EBITMAP_BIT ; 
 unsigned int FUNC1 (struct ebitmap_node*,unsigned int) ; 
 unsigned int FUNC2 (struct ebitmap_node*,unsigned int) ; 
 unsigned int EBITMAP_UNIT_NUMS ; 

__attribute__((used)) static inline void FUNC3(struct ebitmap_node *n,
					unsigned int bit)
{
	unsigned int index = FUNC1(n, bit);
	unsigned int ofs = FUNC2(n, bit);

	FUNC0(index >= EBITMAP_UNIT_NUMS);
	n->maps[index] &= ~(EBITMAP_BIT << ofs);
}