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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int len; } ;
struct property {TYPE_1__ val; } ;
struct node {struct node* children; } ;

/* Variables and functions */
 struct node* FUNC0 (struct node*,char*) ; 
 struct property* FUNC1 (struct node*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct property*) ; 

uint32_t FUNC3(struct node *tree)
{
	struct node *cpus, *bootcpu;
	struct property *reg;

	cpus = FUNC0(tree, "/cpus");
	if (!cpus)
		return 0;


	bootcpu = cpus->children;
	if (!bootcpu)
		return 0;

	reg = FUNC1(bootcpu, "reg");
	if (!reg || (reg->val.len != sizeof(uint32_t)))
		return 0;

	/* FIXME: Sanity check node? */

	return FUNC2(reg);
}