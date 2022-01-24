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
typedef  int uint32_t ;
struct property {int dummy; } ;
struct node {char* name; int /*<<< orphan*/  children; } ;
struct inbuf {int dummy; } ;

/* Variables and functions */
#define  FDT_BEGIN_NODE 132 
#define  FDT_END 131 
#define  FDT_END_NODE 130 
#define  FDT_NOP 129 
#define  FDT_PROP 128 
 int FTF_FULLPATH ; 
 int FTF_NOPS ; 
 int /*<<< orphan*/  FUNC0 (struct node*,struct node*) ; 
 int /*<<< orphan*/  FUNC1 (struct node*,struct property*) ; 
 struct node* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct property* FUNC4 (struct inbuf*,struct inbuf*,int) ; 
 char* FUNC5 (struct inbuf*) ; 
 int FUNC6 (struct inbuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct node *FUNC10(struct inbuf *dtbuf,
				   struct inbuf *strbuf,
				   const char *parent_flatname, int flags)
{
	struct node *node;
	char *flatname;
	uint32_t val;

	node = FUNC2(NULL, NULL, NULL);

	flatname = FUNC5(dtbuf);

	if (flags & FTF_FULLPATH)
		node->name = FUNC9(parent_flatname, flatname);
	else
		node->name = flatname;

	do {
		struct property *prop;
		struct node *child;

		val = FUNC6(dtbuf);
		switch (val) {
		case FDT_PROP:
			if (node->children)
				FUNC7(stderr, "Warning: Flat tree input has "
					"subnodes preceding a property.\n");
			prop = FUNC4(dtbuf, strbuf, flags);
			FUNC1(node, prop);
			break;

		case FDT_BEGIN_NODE:
			child = FUNC10(dtbuf,strbuf, flatname, flags);
			FUNC0(node, child);
			break;

		case FDT_END_NODE:
			break;

		case FDT_END:
			FUNC3("Premature FDT_END in device tree blob\n");
			break;

		case FDT_NOP:
			if (!(flags & FTF_NOPS))
				FUNC7(stderr, "Warning: NOP tag found in flat tree"
					" version <16\n");

			/* Ignore */
			break;

		default:
			FUNC3("Invalid opcode word %08x in device tree blob\n",
			    val);
		}
	} while (val != FDT_END_NODE);

	if (node->name != flatname) {
		FUNC8(flatname);
	}

	return node;
}