#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gcov_node {char* links; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {scalar_t__ ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char FUNC0 (int /*<<< orphan*/ ,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* gcov_link ; 
 char* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct gcov_node*) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(struct gcov_node *node, struct dentry *parent)
{
	const char *basename;
	char *target;
	int num;
	int i;

	for (num = 0; gcov_link[num].ext; num++)
		/* Nothing. */;
	node->links = FUNC7(num, sizeof(struct dentry *), GFP_KERNEL);
	if (!node->links)
		return;
	for (i = 0; i < num; i++) {
		target = FUNC4(
				FUNC3(FUNC5(node)),
				&gcov_link[i]);
		if (!target)
			goto out_err;
		basename = FUNC6(target);
		if (basename == target)
			goto out_err;
		node->links[i] = FUNC0(FUNC2(basename),
							parent,	target);
		FUNC8(target);
	}

	return;
out_err:
	FUNC8(target);
	while (i-- > 0)
		FUNC1(node->links[i]);
	FUNC8(node->links);
	node->links = NULL;
}