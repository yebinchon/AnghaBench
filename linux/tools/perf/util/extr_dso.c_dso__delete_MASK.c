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
struct dso {int short_name_allocated; int long_name_allocated; char* symsrc_filename; int /*<<< orphan*/  lock; int /*<<< orphan*/  nsinfo; int /*<<< orphan*/  auxtrace_cache; int /*<<< orphan*/  long_name; int /*<<< orphan*/  short_name; int /*<<< orphan*/  symbols; int /*<<< orphan*/  srclines; int /*<<< orphan*/  inlined_nodes; int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dso*) ; 
 int /*<<< orphan*/  FUNC3 (struct dso*) ; 
 int /*<<< orphan*/  FUNC4 (struct dso*) ; 
 int /*<<< orphan*/  FUNC5 (struct dso*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char**) ; 

void FUNC13(struct dso *dso)
{
	if (!FUNC0(&dso->rb_node))
		FUNC8("DSO %s is still in rbtree when being deleted!\n",
		       dso->long_name);

	/* free inlines first, as they reference symbols */
	FUNC6(&dso->inlined_nodes);
	FUNC10(&dso->srclines);
	FUNC11(&dso->symbols);

	if (dso->short_name_allocated) {
		FUNC12((char **)&dso->short_name);
		dso->short_name_allocated = false;
	}

	if (dso->long_name_allocated) {
		FUNC12((char **)&dso->long_name);
		dso->long_name_allocated = false;
	}

	FUNC2(dso);
	FUNC1(dso->auxtrace_cache);
	FUNC4(dso);
	FUNC3(dso);
	FUNC12(&dso->symsrc_filename);
	FUNC7(dso->nsinfo);
	FUNC9(&dso->lock);
	FUNC5(dso);
}