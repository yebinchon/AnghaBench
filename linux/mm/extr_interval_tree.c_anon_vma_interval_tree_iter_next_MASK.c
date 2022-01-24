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
struct anon_vma_chain {int dummy; } ;

/* Variables and functions */
 struct anon_vma_chain* FUNC0 (struct anon_vma_chain*,unsigned long,unsigned long) ; 

struct anon_vma_chain *
FUNC1(struct anon_vma_chain *node,
				 unsigned long first, unsigned long last)
{
	return FUNC0(node, first, last);
}