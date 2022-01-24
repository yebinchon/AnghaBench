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
 int ENOMEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  insert_close_thread ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int nr_sk_threads ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  sk_storage_map ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stop ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(void)
{
	int i, map_fd = -1, err = 0, nr_threads_created = 0;
	pthread_t *sk_thread_ids;
	void *thread_ret;

	sk_thread_ids = FUNC8(sizeof(pthread_t) * nr_sk_threads);
	if (!sk_thread_ids) {
		FUNC5(stderr, "malloc(sk_threads): NULL\n");
		return -ENOMEM;
	}

	for (i = 0; i < nr_sk_threads; i++) {
		err = FUNC9(&sk_thread_ids[i], NULL,
				     insert_close_thread, NULL);
		if (err) {
			err = -errno;
			goto done;
		}
		nr_threads_created++;
	}

	while (!FUNC7()) {
		map_fd = FUNC4();
		FUNC2(sk_storage_map, map_fd);

		if (!FUNC11())
			break;

		FUNC2(sk_storage_map, -1);
		FUNC3(map_fd);
		map_fd = -1;

		if (!FUNC12())
			break;
	}

done:
	FUNC2(stop, 1);
	for (i = 0; i < nr_threads_created; i++) {
		FUNC10(sk_thread_ids[i], &thread_ret);
		if (FUNC0(thread_ret) && !err) {
			err = FUNC1(thread_ret);
			FUNC5(stderr, "threads#%u: err:%d\n", i, err);
		}
	}
	FUNC6(sk_thread_ids);

	if (map_fd != -1)
		FUNC3(map_fd);

	return err;
}