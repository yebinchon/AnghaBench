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
struct sparsebit {int dummy; } ;
struct node {int dummy; } ;
typedef  int /*<<< orphan*/  sparsebit_idx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct node* FUNC1 (struct sparsebit*) ; 
 int /*<<< orphan*/  FUNC2 (struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sparsebit*) ; 

sparsebit_idx_t FUNC4(struct sparsebit *s)
{
	struct node *nodep;

	/* Validate at least 1 bit is set */
	FUNC0(FUNC3(s));

	nodep = FUNC1(s);
	return FUNC2(nodep, 0);
}