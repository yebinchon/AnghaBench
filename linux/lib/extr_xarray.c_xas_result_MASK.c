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
struct xa_state {void* xa_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (struct xa_state*) ; 

__attribute__((used)) static void *FUNC2(struct xa_state *xas, void *curr)
{
	if (FUNC0(curr))
		return NULL;
	if (FUNC1(xas))
		curr = xas->xa_node;
	return curr;
}