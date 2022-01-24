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
struct node {scalar_t__ phandle; } ;
struct data {int dummy; } ;
typedef  int cell_t ;

/* Variables and functions */
 int PHANDLE_EPAPR ; 
 int PHANDLE_LEGACY ; 
 int /*<<< orphan*/  TYPE_UINT32 ; 
 int /*<<< orphan*/  FUNC0 (struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct data,int /*<<< orphan*/ *) ; 
 struct data FUNC2 (struct data,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct data FUNC3 (struct data,int) ; 
 struct data empty_data ; 
 scalar_t__ FUNC4 (struct node*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct node*,char*) ; 
 int phandle_format ; 

cell_t FUNC6(struct node *root, struct node *node)
{
	static cell_t phandle = 1; /* FIXME: ick, static local */
	struct data d = empty_data;

	if ((node->phandle != 0) && (node->phandle != -1))
		return node->phandle;

	while (FUNC4(root, phandle))
		phandle++;

	node->phandle = phandle;

	d = FUNC2(d, TYPE_UINT32, NULL);
	d = FUNC3(d, phandle);

	if (!FUNC5(node, "linux,phandle")
	    && (phandle_format & PHANDLE_LEGACY))
		FUNC0(node, FUNC1("linux,phandle", d, NULL));

	if (!FUNC5(node, "phandle")
	    && (phandle_format & PHANDLE_EPAPR))
		FUNC0(node, FUNC1("phandle", d, NULL));

	/* If the node *does* have a phandle property, we must
	 * be dealing with a self-referencing phandle, which will be
	 * fixed up momentarily in the caller */

	return node->phandle;
}