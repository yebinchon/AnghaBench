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
struct property {int dummy; } ;
struct node {int dummy; } ;
struct data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_PHANDLE ; 
 int /*<<< orphan*/  TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct node*,struct node*) ; 
 struct node* FUNC1 (struct property*,struct node*,int /*<<< orphan*/ *) ; 
 struct property* FUNC2 (char*,struct data,int /*<<< orphan*/ *) ; 
 struct data FUNC3 (struct data,int /*<<< orphan*/ ,char*) ; 
 struct data FUNC4 (struct data,char*,scalar_t__) ; 
 struct data FUNC5 (struct data,int,int) ; 
 struct data empty_data ; 
 int /*<<< orphan*/  FUNC6 (struct node*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char**,char*,int /*<<< orphan*/ ) ; 

struct node * FUNC9(struct node *dt, struct node *new_node, char *ref)
{
	static unsigned int next_orphan_fragment = 0;
	struct node *node;
	struct property *p;
	struct data d = empty_data;
	char *name;

	if (ref[0] == '/') {
		d = FUNC3(d, TYPE_STRING, ref);
		d = FUNC4(d, ref, FUNC7(ref) + 1);

		p = FUNC2("target-path", d, NULL);
	} else {
		d = FUNC3(d, REF_PHANDLE, ref);
		d = FUNC5(d, 0xffffffff, 32);

		p = FUNC2("target", d, NULL);
	}

	FUNC8(&name, "fragment@%u",
			next_orphan_fragment++);
	FUNC6(new_node, "__overlay__");
	node = FUNC1(p, new_node, NULL);
	FUNC6(node, name);

	FUNC0(dt, node);
	return dt;
}