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
struct list_head {int dummy; } ;
struct audit_watch {int dummy; } ;
struct audit_tree {int dummy; } ;
struct TYPE_3__ {int listnr; unsigned long long prio; int flags; int /*<<< orphan*/  list; struct audit_tree* tree; struct audit_watch* watch; } ;
struct audit_entry {int /*<<< orphan*/  list; TYPE_1__ rule; } ;

/* Variables and functions */
#define  AUDIT_FILTER_EXCLUDE 130 
 int AUDIT_FILTER_EXIT ; 
#define  AUDIT_FILTER_FS 129 
 int AUDIT_FILTER_PREPEND ; 
#define  AUDIT_FILTER_USER 128 
 int EEXIST ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,struct list_head**) ; 
 int /*<<< orphan*/  audit_filter_mutex ; 
 struct audit_entry* FUNC2 (struct audit_entry*,struct list_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_entry*) ; 
 int /*<<< orphan*/  audit_n_rules ; 
 int /*<<< orphan*/  FUNC4 (struct audit_tree*) ; 
 int /*<<< orphan*/ * audit_rules_list ; 
 int /*<<< orphan*/  audit_signals ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned long long prio_high ; 
 unsigned long long prio_low ; 

__attribute__((used)) static inline int FUNC11(struct audit_entry *entry)
{
	struct audit_entry *e;
	struct audit_watch *watch = entry->rule.watch;
	struct audit_tree *tree = entry->rule.tree;
	struct list_head *list;
	int err = 0;
#ifdef CONFIG_AUDITSYSCALL
	int dont_count = 0;

	/* If any of these, don't count towards total */
	switch(entry->rule.listnr) {
	case AUDIT_FILTER_USER:
	case AUDIT_FILTER_EXCLUDE:
	case AUDIT_FILTER_FS:
		dont_count = 1;
	}
#endif

	FUNC9(&audit_filter_mutex);
	e = FUNC2(entry, &list);
	if (e) {
		FUNC10(&audit_filter_mutex);
		err = -EEXIST;
		/* normally audit_add_tree_rule() will free it on failure */
		if (tree)
			FUNC4(tree);
		return err;
	}

	if (watch) {
		/* audit_filter_mutex is dropped and re-taken during this call */
		err = FUNC1(&entry->rule, &list);
		if (err) {
			FUNC10(&audit_filter_mutex);
			/*
			 * normally audit_add_tree_rule() will free it
			 * on failure
			 */
			if (tree)
				FUNC4(tree);
			return err;
		}
	}
	if (tree) {
		err = FUNC0(&entry->rule);
		if (err) {
			FUNC10(&audit_filter_mutex);
			return err;
		}
	}

	entry->rule.prio = ~0ULL;
	if (entry->rule.listnr == AUDIT_FILTER_EXIT) {
		if (entry->rule.flags & AUDIT_FILTER_PREPEND)
			entry->rule.prio = ++prio_high;
		else
			entry->rule.prio = --prio_low;
	}

	if (entry->rule.flags & AUDIT_FILTER_PREPEND) {
		FUNC5(&entry->rule.list,
			 &audit_rules_list[entry->rule.listnr]);
		FUNC6(&entry->list, list);
		entry->rule.flags &= ~AUDIT_FILTER_PREPEND;
	} else {
		FUNC7(&entry->rule.list,
			      &audit_rules_list[entry->rule.listnr]);
		FUNC8(&entry->list, list);
	}
#ifdef CONFIG_AUDITSYSCALL
	if (!dont_count)
		audit_n_rules++;

	if (!audit_match_signal(entry))
		audit_signals++;
#endif
	FUNC10(&audit_filter_mutex);

	return err;
}