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
struct xt_recent_mtinfo_v1 {int /*<<< orphan*/  name; } ;
struct xt_mtdtor_param {struct xt_recent_mtinfo_v1* matchinfo; int /*<<< orphan*/  net; } ;
struct recent_table {scalar_t__ refcnt; int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;
struct recent_net {int /*<<< orphan*/ * xt_recent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recent_lock ; 
 int /*<<< orphan*/  recent_mutex ; 
 struct recent_net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct recent_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct recent_table*) ; 
 struct recent_table* FUNC6 (struct recent_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(const struct xt_mtdtor_param *par)
{
	struct recent_net *recent_net = FUNC3(par->net);
	const struct xt_recent_mtinfo_v1 *info = par->matchinfo;
	struct recent_table *t;

	FUNC1(&recent_mutex);
	t = FUNC6(recent_net, info->name);
	if (--t->refcnt == 0) {
		FUNC8(&recent_lock);
		FUNC0(&t->list);
		FUNC9(&recent_lock);
#ifdef CONFIG_PROC_FS
		if (recent_net->xt_recent != NULL)
			remove_proc_entry(t->name, recent_net->xt_recent);
#endif
		FUNC4(t);
		FUNC5(t);
	}
	FUNC2(&recent_mutex);
}