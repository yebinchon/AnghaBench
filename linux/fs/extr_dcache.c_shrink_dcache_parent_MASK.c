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
struct select_data {int /*<<< orphan*/  dispose; struct dentry* victim; int /*<<< orphan*/  found; struct dentry* start; } ;
struct dentry {struct dentry* d_parent; int /*<<< orphan*/  d_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct select_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  select_collect ; 
 int /*<<< orphan*/  select_collect2 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct dentry *parent)
{
	for (;;) {
		struct select_data data = {.start = parent};

		FUNC0(&data.dispose);
		FUNC4(parent, &data, select_collect);

		if (!FUNC5(&data.dispose)) {
			FUNC7(&data.dispose);
			continue;
		}

		FUNC3();
		if (!data.found)
			break;
		data.victim = NULL;
		FUNC4(parent, &data, select_collect2);
		if (data.victim) {
			struct dentry *parent;
			FUNC9(&data.victim->d_lock);
			if (!FUNC8(data.victim)) {
				FUNC10(&data.victim->d_lock);
				FUNC6();
			} else {
				FUNC6();
				parent = data.victim->d_parent;
				if (parent != data.victim)
					FUNC2(parent, &data.dispose);
				FUNC1(data.victim);
			}
		}
		if (!FUNC5(&data.dispose))
			FUNC7(&data.dispose);
	}
}