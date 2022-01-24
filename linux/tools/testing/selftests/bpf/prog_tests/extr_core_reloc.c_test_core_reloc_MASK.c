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
struct data {int /*<<< orphan*/ * out; int /*<<< orphan*/  in; } ;
struct core_reloc_test_case {int input_len; int output_len; int /*<<< orphan*/ * output; int /*<<< orphan*/ * input; scalar_t__ fails; int /*<<< orphan*/  btf_src_file; int /*<<< orphan*/  bpf_obj_file; int /*<<< orphan*/  case_name; } ;
struct bpf_program {int dummy; } ;
struct bpf_object_load_attr {int /*<<< orphan*/  target_btf_path; scalar_t__ log_level; struct bpf_object* obj; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef  struct bpf_object bpf_link ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int FUNC0 (struct core_reloc_test_case*) ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_RAW_TRACEPOINT ; 
 scalar_t__ FUNC1 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_map*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int const*,struct data*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int const*,struct data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bpf_object*) ; 
 struct bpf_map* FUNC10 (struct bpf_object*,char*) ; 
 struct bpf_program* FUNC11 (struct bpf_object*,char const*) ; 
 int FUNC12 (struct bpf_object_load_attr*) ; 
 struct bpf_object* FUNC13 (int /*<<< orphan*/ ) ; 
 struct bpf_object* FUNC14 (struct bpf_program*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct bpf_program*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (struct data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 struct core_reloc_test_case* test_cases ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

void FUNC22(void)
{
	const char *probe_name = "raw_tracepoint/sys_enter";
	struct bpf_object_load_attr load_attr = {};
	struct core_reloc_test_case *test_case;
	int err, duration = 0, i, equal;
	struct bpf_link *link = NULL;
	struct bpf_map *data_map;
	struct bpf_program *prog;
	struct bpf_object *obj;
	const int zero = 0;
	struct data data;

	for (i = 0; i < FUNC0(test_cases); i++) {
		test_case = &test_cases[i];

		if (!FUNC20(test_case->case_name))
			continue;

		obj = FUNC13(test_case->bpf_obj_file);
		if (FUNC1(FUNC3(obj), "obj_open",
			  "failed to open '%s': %ld\n",
			  test_case->bpf_obj_file, FUNC4(obj)))
			continue;

		prog = FUNC11(obj, probe_name);
		if (FUNC1(!prog, "find_probe",
			  "prog '%s' not found\n", probe_name))
			goto cleanup;
		FUNC15(prog, BPF_PROG_TYPE_RAW_TRACEPOINT);

		load_attr.obj = obj;
		load_attr.log_level = 0;
		load_attr.target_btf_path = test_case->btf_src_file;
		err = FUNC12(&load_attr);
		if (test_case->fails) {
			FUNC1(!err, "obj_load_fail",
			      "should fail to load prog '%s'\n", probe_name);
			goto cleanup;
		} else {
			if (FUNC1(err, "obj_load",
				  "failed to load prog '%s': %d\n",
				  probe_name, err))
				goto cleanup;
		}

		link = FUNC14(prog, "sys_enter");
		if (FUNC1(FUNC2(link), "attach_raw_tp", "err %ld\n",
			  FUNC4(link)))
			goto cleanup;

		data_map = FUNC10(obj, "test_cor.bss");
		if (FUNC1(!data_map, "find_data_map", "data map not found\n"))
			goto cleanup;

		FUNC18(&data, 0, sizeof(data));
		FUNC17(data.in, test_case->input, test_case->input_len);

		err = FUNC8(FUNC6(data_map),
					  &zero, &data, 0);
		if (FUNC1(err, "update_data_map",
			  "failed to update .data map: %d\n", err))
			goto cleanup;

		/* trigger test run */
		FUNC21(1);

		err = FUNC7(FUNC6(data_map), &zero, &data);
		if (FUNC1(err, "get_result",
			  "failed to get output data: %d\n", err))
			goto cleanup;

		equal = FUNC16(data.out, test_case->output,
			       test_case->output_len) == 0;
		if (FUNC1(!equal, "check_result",
			  "input/output data don't match\n")) {
			int j;

			for (j = 0; j < test_case->input_len; j++) {
				FUNC19("input byte #%d: 0x%02hhx\n",
				       j, test_case->input[j]);
			}
			for (j = 0; j < test_case->output_len; j++) {
				FUNC19("output byte #%d: EXP 0x%02hhx GOT 0x%02hhx\n",
				       j, test_case->output[j], data.out[j]);
			}
			goto cleanup;
		}

cleanup:
		if (!FUNC3(link)) {
			FUNC5(link);
			link = NULL;
		}
		FUNC9(obj);
	}
}