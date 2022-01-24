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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct machine {TYPE_1__ dsos; } ;
struct kmod_path {int /*<<< orphan*/  name; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 struct dso* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct dso* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dso*) ; 
 int /*<<< orphan*/  FUNC4 (struct dso*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dso*,struct kmod_path*,struct machine*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dso *FUNC8(struct machine *machine,
					       struct kmod_path *m,
					       const char *filename)
{
	struct dso *dso;

	FUNC2(&machine->dsos.lock);

	dso = FUNC1(&machine->dsos, m->name, true);
	if (!dso) {
		dso = FUNC0(&machine->dsos, m->name);
		if (dso == NULL)
			goto out_unlock;

		FUNC5(dso, m, machine);
		FUNC4(dso, FUNC6(filename), true);
	}

	FUNC3(dso);
out_unlock:
	FUNC7(&machine->dsos.lock);
	return dso;
}