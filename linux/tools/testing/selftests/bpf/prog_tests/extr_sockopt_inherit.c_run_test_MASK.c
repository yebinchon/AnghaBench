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
struct bpf_prog_load_attr {char* file; } ;
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  CUSTOM_INHERIT1 ; 
 int /*<<< orphan*/  CUSTOM_INHERIT2 ; 
 int /*<<< orphan*/  CUSTOM_LISTENER ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_object*) ; 
 int FUNC2 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct bpf_object*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  server_started ; 
 int /*<<< orphan*/  server_started_mtx ; 
 int /*<<< orphan*/  server_thread ; 
 int FUNC11 () ; 
 int FUNC12 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(int cgroup_fd)
{
	struct bpf_prog_load_attr attr = {
		.file = "./sockopt_inherit.o",
	};
	int server_fd = -1, client_fd;
	struct bpf_object *obj;
	void *server_err;
	pthread_t tid;
	int ignored;
	int err;

	err = FUNC2(&attr, &obj, &ignored);
	if (FUNC0(err))
		return;

	err = FUNC5(obj, cgroup_fd, "cgroup/getsockopt");
	if (FUNC0(err))
		goto close_bpf_object;

	err = FUNC5(obj, cgroup_fd, "cgroup/setsockopt");
	if (FUNC0(err))
		goto close_bpf_object;

	server_fd = FUNC11();
	if (FUNC0(server_fd < 0))
		goto close_bpf_object;

	if (FUNC0(FUNC7(&tid, NULL, server_thread,
				      (void *)&server_fd)))
		goto close_server_fd;

	FUNC9(&server_started_mtx);
	FUNC6(&server_started, &server_started_mtx);
	FUNC10(&server_started_mtx);

	client_fd = FUNC4(server_fd);
	if (FUNC0(client_fd < 0))
		goto close_server_fd;

	FUNC0(FUNC12(client_fd, CUSTOM_INHERIT1, "connect", 0));
	FUNC0(FUNC12(client_fd, CUSTOM_INHERIT2, "connect", 0));
	FUNC0(FUNC12(client_fd, CUSTOM_LISTENER, "connect", 0));

	FUNC8(tid, &server_err);

	err = (int)(long)server_err;
	FUNC0(err);

	FUNC3(client_fd);

close_server_fd:
	FUNC3(server_fd);
close_bpf_object:
	FUNC1(obj);
}