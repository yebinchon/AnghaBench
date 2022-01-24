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
struct klist_node {int /*<<< orphan*/  n_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  klist_release ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct klist_node *n)
{
	return FUNC0(&n->n_ref, klist_release);
}