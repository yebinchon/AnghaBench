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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mt_tree ; 
 int /*<<< orphan*/  obj0 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reader_fn ; 
 int /*<<< orphan*/  worker_barrier ; 
 int /*<<< orphan*/  writer_fn ; 

void FUNC7(void)
{
	pthread_t reader, writer;

	FUNC2(1, "regression test 4 starting\n");

	FUNC6(&mt_tree, 0, &obj0);
	FUNC3(&worker_barrier, NULL, 2);

	if (FUNC4(&reader, NULL, reader_fn, NULL) ||
	    FUNC4(&writer, NULL, writer_fn, NULL)) {
		FUNC1("pthread_create");
		FUNC0(1);
	}

	if (FUNC5(reader, NULL) || FUNC5(writer, NULL)) {
		FUNC1("pthread_join");
		FUNC0(1);
	}

	FUNC2(1, "regression test 4 passed\n");
}