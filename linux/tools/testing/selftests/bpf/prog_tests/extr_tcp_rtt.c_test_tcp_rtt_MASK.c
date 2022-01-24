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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  server_started ; 
 int /*<<< orphan*/  server_started_mtx ; 
 int /*<<< orphan*/  server_thread ; 
 int FUNC7 () ; 
 int FUNC8 (char*) ; 

void FUNC9(void)
{
	int server_fd, cgroup_fd;
	pthread_t tid;

	cgroup_fd = FUNC8("/tcp_rtt");
	if (FUNC0(cgroup_fd < 0))
		return;

	server_fd = FUNC7();
	if (FUNC0(server_fd < 0))
		goto close_cgroup_fd;

	if (FUNC0(FUNC3(&tid, NULL, server_thread,
				      (void *)&server_fd)))
		goto close_server_fd;

	FUNC4(&server_started_mtx);
	FUNC2(&server_started, &server_started_mtx);
	FUNC5(&server_started_mtx);

	FUNC0(FUNC6(cgroup_fd, server_fd));
close_server_fd:
	FUNC1(server_fd);
close_cgroup_fd:
	FUNC1(cgroup_fd);
}