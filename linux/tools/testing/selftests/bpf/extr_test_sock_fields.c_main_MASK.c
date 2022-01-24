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
struct bpf_program {int dummy; } ;
struct bpf_prog_load_attr {char* file; int /*<<< orphan*/  prog_flags; int /*<<< orphan*/  prog_type; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_CGROUP_INET_EGRESS ; 
 int /*<<< orphan*/  BPF_CGROUP_INET_INGRESS ; 
 int /*<<< orphan*/  BPF_F_TEST_RND_HI32 ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_SKB ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 int /*<<< orphan*/  TEST_CGROUP ; 
 void* addr_map_fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) ()) ; 
 void* FUNC2 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_object*) ; 
 struct bpf_map* FUNC4 (struct bpf_object*,char*) ; 
 struct bpf_program* FUNC5 (struct bpf_object*,char*) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int FUNC8 (struct bpf_program*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 void* linum_map_fd ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 () ; 
 void* sk_map_fd ; 
 void* sk_pkt_out_cnt10_fd ; 
 void* sk_pkt_out_cnt_fd ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* tp_map_fd ; 

int FUNC16(int argc, char **argv)
{
	struct bpf_prog_load_attr attr = {
		.file = "test_sock_fields_kern.o",
		.prog_type = BPF_PROG_TYPE_CGROUP_SKB,
		.prog_flags = BPF_F_TEST_RND_HI32,
	};
	int cgroup_fd, egress_fd, ingress_fd, err;
	struct bpf_program *ingress_prog;
	struct bpf_object *obj;
	struct bpf_map *map;

	err = FUNC14();
	FUNC0(err, "setup_cgroup_environment()", "err:%d errno:%d",
	      err, errno);

	FUNC1(cleanup_cgroup_environment);

	/* Create a cgroup, get fd, and join it */
	cgroup_fd = FUNC11(TEST_CGROUP);
	FUNC0(cgroup_fd == -1, "create_and_get_cgroup()",
	      "cgroup_fd:%d errno:%d", cgroup_fd, errno);

	err = FUNC12(TEST_CGROUP);
	FUNC0(err, "join_cgroup", "err:%d errno:%d", err, errno);

	err = FUNC7(&attr, &obj, &egress_fd);
	FUNC0(err, "bpf_prog_load_xattr()", "err:%d", err);

	ingress_prog = FUNC5(obj,
							 "cgroup_skb/ingress");
	FUNC0(!ingress_prog,
	      "bpf_object__find_program_by_title(cgroup_skb/ingress)",
	      "not found");
	ingress_fd = FUNC8(ingress_prog);

	err = FUNC6(egress_fd, cgroup_fd, BPF_CGROUP_INET_EGRESS, 0);
	FUNC0(err == -1, "bpf_prog_attach(CPF_CGROUP_INET_EGRESS)",
	      "err:%d errno%d", err, errno);

	err = FUNC6(ingress_fd, cgroup_fd,
			      BPF_CGROUP_INET_INGRESS, 0);
	FUNC0(err == -1, "bpf_prog_attach(CPF_CGROUP_INET_INGRESS)",
	      "err:%d errno%d", err, errno);
	FUNC10(cgroup_fd);

	map = FUNC4(obj, "addr_map");
	FUNC0(!map, "cannot find addr_map", "(null)");
	addr_map_fd = FUNC2(map);

	map = FUNC4(obj, "sock_result_map");
	FUNC0(!map, "cannot find sock_result_map", "(null)");
	sk_map_fd = FUNC2(map);

	map = FUNC4(obj, "tcp_sock_result_map");
	FUNC0(!map, "cannot find tcp_sock_result_map", "(null)");
	tp_map_fd = FUNC2(map);

	map = FUNC4(obj, "linum_map");
	FUNC0(!map, "cannot find linum_map", "(null)");
	linum_map_fd = FUNC2(map);

	map = FUNC4(obj, "sk_pkt_out_cnt");
	FUNC0(!map, "cannot find sk_pkt_out_cnt", "(null)");
	sk_pkt_out_cnt_fd = FUNC2(map);

	map = FUNC4(obj, "sk_pkt_out_cnt10");
	FUNC0(!map, "cannot find sk_pkt_out_cnt10", "(null)");
	sk_pkt_out_cnt10_fd = FUNC2(map);

	FUNC15();

	FUNC3(obj);
	FUNC9();

	FUNC13("PASS\n");

	return 0;
}