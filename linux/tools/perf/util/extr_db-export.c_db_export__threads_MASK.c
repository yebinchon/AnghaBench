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
struct thread {int /*<<< orphan*/  db_id; } ;
struct machine {int dummy; } ;
struct db_export {int dummy; } ;
struct comm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct db_export*,struct comm*,struct thread*) ; 
 int FUNC1 (struct db_export*,struct comm*,struct thread*) ; 
 int FUNC2 (struct db_export*,struct comm*,struct thread*) ; 
 int FUNC3 (struct db_export*,struct thread*,struct machine*,struct thread*) ; 
 struct comm* FUNC4 (struct machine*,struct thread*) ; 
 struct comm* FUNC5 (struct thread*) ; 

__attribute__((used)) static int FUNC6(struct db_export *dbe, struct thread *thread,
			      struct thread *main_thread,
			      struct machine *machine, struct comm **comm_ptr)
{
	struct comm *comm = NULL;
	struct comm *curr_comm;
	int err;

	if (main_thread) {
		/*
		 * A thread has a reference to the main thread, so export the
		 * main thread first.
		 */
		err = FUNC3(dbe, main_thread, machine, main_thread);
		if (err)
			return err;
		/*
		 * Export comm before exporting the non-main thread because
		 * db_export__comm_thread() can be called further below.
		 */
		comm = FUNC4(machine, main_thread);
		if (comm) {
			err = FUNC2(dbe, comm, main_thread);
			if (err)
				return err;
			*comm_ptr = comm;
		}
	}

	if (thread != main_thread) {
		/*
		 * For a non-main thread, db_export__comm_thread() must be
		 * called only if thread has not previously been exported.
		 */
		bool export_comm_thread = comm && !thread->db_id;

		err = FUNC3(dbe, thread, machine, main_thread);
		if (err)
			return err;

		if (export_comm_thread) {
			err = FUNC1(dbe, comm, thread);
			if (err)
				return err;
		}
	}

	curr_comm = FUNC5(thread);
	if (curr_comm)
		return FUNC0(dbe, curr_comm, thread);

	return 0;
}