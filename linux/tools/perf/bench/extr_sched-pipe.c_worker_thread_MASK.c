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
struct thread_data {int /*<<< orphan*/  pipe_read; int /*<<< orphan*/  pipe_write; int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int loops ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void *FUNC3(void *__tdata)
{
	struct thread_data *td = __tdata;
	int m = 0, i;
	int ret;

	for (i = 0; i < loops; i++) {
		if (!td->nr) {
			ret = FUNC1(td->pipe_read, &m, sizeof(int));
			FUNC0(ret != sizeof(int));
			ret = FUNC2(td->pipe_write, &m, sizeof(int));
			FUNC0(ret != sizeof(int));
		} else {
			ret = FUNC2(td->pipe_write, &m, sizeof(int));
			FUNC0(ret != sizeof(int));
			ret = FUNC1(td->pipe_read, &m, sizeof(int));
			FUNC0(ret != sizeof(int));
		}
	}

	return NULL;
}