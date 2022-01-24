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
struct threads {int /*<<< orphan*/  lock; } ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 struct thread* FUNC0 (struct machine*,struct threads*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct threads* FUNC2 (struct machine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct thread *FUNC4(struct machine *machine, pid_t pid,
				    pid_t tid)
{
	struct threads *threads = FUNC2(machine, tid);
	struct thread *th;

	FUNC1(&threads->lock);
	th =  FUNC0(machine, threads, pid, tid, false);
	FUNC3(&threads->lock);
	return th;
}