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
struct bpf_prog_load_attr {char* file; int /*<<< orphan*/  expected_attach_type; int /*<<< orphan*/  prog_type; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_CGROUP_SOCK_OPS ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_SOCK_OPS ; 
 int FUNC0 (struct bpf_map*) ; 
 struct bpf_map* FUNC1 (int /*<<< orphan*/ *,struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_object*) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int,int,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(int cgroup_fd, int server_fd)
{
	struct bpf_prog_load_attr attr = {
		.prog_type = BPF_PROG_TYPE_SOCK_OPS,
		.file = "./tcp_rtt.o",
		.expected_attach_type = BPF_CGROUP_SOCK_OPS,
	};
	struct bpf_object *obj;
	struct bpf_map *map;
	int client_fd;
	int prog_fd;
	int map_fd;
	int err;

	err = FUNC4(&attr, &obj, &prog_fd);
	if (err) {
		FUNC7("Failed to load BPF object");
		return -1;
	}

	map = FUNC1(NULL, obj);
	map_fd = FUNC0(map);

	err = FUNC3(prog_fd, cgroup_fd, BPF_CGROUP_SOCK_OPS, 0);
	if (err) {
		FUNC7("Failed to attach BPF program");
		goto close_bpf_object;
	}

	client_fd = FUNC6(server_fd);
	if (client_fd < 0) {
		err = -1;
		goto close_bpf_object;
	}

	err += FUNC9(map_fd, client_fd, "syn-ack",
			 /*invoked=*/1,
			 /*dsack_dups=*/0,
			 /*delivered=*/1,
			 /*delivered_ce=*/0,
			 /*icsk_retransmits=*/0);

	FUNC8(client_fd);
	if (FUNC10(client_fd, 100) < 0) {
		err = -1;
		goto close_client_fd;
	}


	err += FUNC9(map_fd, client_fd, "first payload byte",
			 /*invoked=*/2,
			 /*dsack_dups=*/0,
			 /*delivered=*/2,
			 /*delivered_ce=*/0,
			 /*icsk_retransmits=*/0);

close_client_fd:
	FUNC5(client_fd);

close_bpf_object:
	FUNC2(obj);
	return err;
}