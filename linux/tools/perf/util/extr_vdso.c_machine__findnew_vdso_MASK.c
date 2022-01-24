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
struct vdso_info {int /*<<< orphan*/  vdso; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct machine {TYPE_1__ dsos; struct vdso_info* vdso_info; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSO__NAME_VDSO ; 
 struct dso* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct dso* FUNC1 (struct machine*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct machine*,struct thread*,struct vdso_info*,struct dso**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dso*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 struct dso* FUNC6 (struct machine*,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct vdso_info* FUNC8 () ; 

struct dso *FUNC9(struct machine *machine,
				  struct thread *thread)
{
	struct vdso_info *vdso_info;
	struct dso *dso = NULL;

	FUNC3(&machine->dsos.lock);
	if (!machine->vdso_info)
		machine->vdso_info = FUNC8();

	vdso_info = machine->vdso_info;
	if (!vdso_info)
		goto out_unlock;

	dso = FUNC6(machine, thread);
	if (dso)
		goto out_unlock;

#if BITS_PER_LONG == 64
	if (__machine__findnew_vdso_compat(machine, thread, vdso_info, &dso))
		goto out_unlock;
#endif

	dso = FUNC0(&machine->dsos, DSO__NAME_VDSO, true);
	if (!dso) {
		char *file;

		file = FUNC5(&vdso_info->vdso);
		if (file)
			dso = FUNC1(machine, DSO__NAME_VDSO, file);
	}

out_unlock:
	FUNC4(dso);
	FUNC7(&machine->dsos.lock);
	return dso;
}