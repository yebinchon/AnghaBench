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
struct strfilter_node {int dummy; } ;
struct strfilter {struct strfilter_node* root; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OP_and ; 
 int /*<<< orphan*/  OP_or ; 
 struct strfilter_node* FUNC0 (int /*<<< orphan*/ ,struct strfilter_node*,struct strfilter_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct strfilter_node*) ; 
 struct strfilter_node* FUNC2 (char const*,char const**) ; 

__attribute__((used)) static int FUNC3(struct strfilter *filter, bool _or,
			     const char *rules, const char **err)
{
	struct strfilter_node *right, *root;
	const char *ep = NULL;

	if (!filter || !rules)
		return -EINVAL;

	right = FUNC2(rules, &ep);
	if (!right || *ep != '\0') {
		if (err)
			*err = ep;
		goto error;
	}
	root = FUNC0(_or ? OP_or : OP_and, filter->root, right);
	if (!root) {
		ep = NULL;
		goto error;
	}

	filter->root = root;
	return 0;

error:
	FUNC1(right);
	return ep ? -EINVAL : -ENOMEM;
}