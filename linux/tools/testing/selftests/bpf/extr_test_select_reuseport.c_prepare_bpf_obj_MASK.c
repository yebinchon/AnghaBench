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
struct bpf_object_open_attr {char* file; int /*<<< orphan*/  prog_type; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_SK_REUSEPORT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bpf_map*) ; 
 int FUNC4 (struct bpf_map*,int /*<<< orphan*/ ) ; 
 struct bpf_map* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_object_open_attr*) ; 
 int FUNC8 (struct bpf_program*) ; 
 struct bpf_program* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bpf_program*,int /*<<< orphan*/ ) ; 
 int data_check_map ; 
 int linum_map ; 
 int /*<<< orphan*/  obj ; 
 int /*<<< orphan*/  outer_map ; 
 int result_map ; 
 int select_by_skb_data_prog ; 
 int tmp_index_ovr_map ; 

__attribute__((used)) static void FUNC11(void)
{
	struct bpf_program *prog;
	struct bpf_map *map;
	int err;
	struct bpf_object_open_attr attr = {
		.file = "test_select_reuseport_kern.o",
		.prog_type = BPF_PROG_TYPE_SK_REUSEPORT,
	};

	obj = FUNC7(&attr);
	FUNC0(FUNC1(obj), "open test_select_reuseport_kern.o",
	      "obj:%p PTR_ERR(obj):%ld\n", obj, FUNC2(obj));

	prog = FUNC9(NULL, obj);
	FUNC0(!prog, "get first bpf_program", "!prog\n");
	FUNC10(prog, attr.prog_type);

	map = FUNC5(obj, "outer_map");
	FUNC0(!map, "find outer_map", "!map\n");
	err = FUNC4(map, outer_map);
	FUNC0(err, "reuse outer_map", "err:%d\n", err);

	err = FUNC6(obj);
	FUNC0(err, "load bpf_object", "err:%d\n", err);

	select_by_skb_data_prog = FUNC8(prog);
	FUNC0(select_by_skb_data_prog == -1, "get prog fd",
	      "select_by_skb_data_prog:%d\n", select_by_skb_data_prog);

	map = FUNC5(obj, "result_map");
	FUNC0(!map, "find result_map", "!map\n");
	result_map = FUNC3(map);
	FUNC0(result_map == -1, "get result_map fd",
	      "result_map:%d\n", result_map);

	map = FUNC5(obj, "tmp_index_ovr_map");
	FUNC0(!map, "find tmp_index_ovr_map", "!map\n");
	tmp_index_ovr_map = FUNC3(map);
	FUNC0(tmp_index_ovr_map == -1, "get tmp_index_ovr_map fd",
	      "tmp_index_ovr_map:%d\n", tmp_index_ovr_map);

	map = FUNC5(obj, "linum_map");
	FUNC0(!map, "find linum_map", "!map\n");
	linum_map = FUNC3(map);
	FUNC0(linum_map == -1, "get linum_map fd",
	      "linum_map:%d\n", linum_map);

	map = FUNC5(obj, "data_check_map");
	FUNC0(!map, "find data_check_map", "!map\n");
	data_check_map = FUNC3(map);
	FUNC0(data_check_map == -1, "get data_check_map fd",
	      "data_check_map:%d\n", data_check_map);
}