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
typedef  int /*<<< orphan*/  u64 ;
struct rb_node {int dummy; } ;
struct ovl_readdir_data {int err; TYPE_1__* root; int /*<<< orphan*/  list; } ;
struct ovl_cache_entry {int /*<<< orphan*/  node; int /*<<< orphan*/  l_node; } ;
struct TYPE_2__ {struct rb_node* rb_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int,struct rb_node***,struct rb_node**) ; 
 struct ovl_cache_entry* FUNC2 (struct ovl_readdir_data*,char const*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 

__attribute__((used)) static int FUNC5(struct ovl_readdir_data *rdd,
				  const char *name, int len, u64 ino,
				  unsigned int d_type)
{
	struct rb_node **newp = &rdd->root->rb_node;
	struct rb_node *parent = NULL;
	struct ovl_cache_entry *p;

	if (FUNC1(name, len, &newp, &parent))
		return 0;

	p = FUNC2(rdd, name, len, ino, d_type);
	if (p == NULL) {
		rdd->err = -ENOMEM;
		return -ENOMEM;
	}

	FUNC0(&p->l_node, rdd->list);
	FUNC4(&p->node, parent, newp);
	FUNC3(&p->node, rdd->root);

	return 0;
}