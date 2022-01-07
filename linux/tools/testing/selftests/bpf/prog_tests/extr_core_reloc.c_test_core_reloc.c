
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int * out; int in; } ;
struct core_reloc_test_case {int input_len; int output_len; int * output; int * input; scalar_t__ fails; int btf_src_file; int bpf_obj_file; int case_name; } ;
struct bpf_program {int dummy; } ;
struct bpf_object_load_attr {int target_btf_path; scalar_t__ log_level; struct bpf_object* obj; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef struct bpf_object bpf_link ;
typedef int data ;


 int ARRAY_SIZE (struct core_reloc_test_case*) ;
 int BPF_PROG_TYPE_RAW_TRACEPOINT ;
 scalar_t__ CHECK (int,char*,char*,...) ;
 int IS_ERR (struct bpf_object*) ;
 int IS_ERR_OR_NULL (struct bpf_object*) ;
 int PTR_ERR (struct bpf_object*) ;
 int bpf_link__destroy (struct bpf_object*) ;
 int bpf_map__fd (struct bpf_map*) ;
 int bpf_map_lookup_elem (int ,int const*,struct data*) ;
 int bpf_map_update_elem (int ,int const*,struct data*,int ) ;
 int bpf_object__close (struct bpf_object*) ;
 struct bpf_map* bpf_object__find_map_by_name (struct bpf_object*,char*) ;
 struct bpf_program* bpf_object__find_program_by_title (struct bpf_object*,char const*) ;
 int bpf_object__load_xattr (struct bpf_object_load_attr*) ;
 struct bpf_object* bpf_object__open (int ) ;
 struct bpf_object* bpf_program__attach_raw_tracepoint (struct bpf_program*,char*) ;
 int bpf_program__set_type (struct bpf_program*,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int ,int *,int) ;
 int memset (struct data*,int ,int) ;
 int printf (char*,int,int ,...) ;
 int test__start_subtest (int ) ;
 struct core_reloc_test_case* test_cases ;
 int usleep (int) ;

void test_core_reloc(void)
{
 const char *probe_name = "raw_tracepoint/sys_enter";
 struct bpf_object_load_attr load_attr = {};
 struct core_reloc_test_case *test_case;
 int err, duration = 0, i, equal;
 struct bpf_link *link = ((void*)0);
 struct bpf_map *data_map;
 struct bpf_program *prog;
 struct bpf_object *obj;
 const int zero = 0;
 struct data data;

 for (i = 0; i < ARRAY_SIZE(test_cases); i++) {
  test_case = &test_cases[i];

  if (!test__start_subtest(test_case->case_name))
   continue;

  obj = bpf_object__open(test_case->bpf_obj_file);
  if (CHECK(IS_ERR_OR_NULL(obj), "obj_open",
     "failed to open '%s': %ld\n",
     test_case->bpf_obj_file, PTR_ERR(obj)))
   continue;

  prog = bpf_object__find_program_by_title(obj, probe_name);
  if (CHECK(!prog, "find_probe",
     "prog '%s' not found\n", probe_name))
   goto cleanup;
  bpf_program__set_type(prog, BPF_PROG_TYPE_RAW_TRACEPOINT);

  load_attr.obj = obj;
  load_attr.log_level = 0;
  load_attr.target_btf_path = test_case->btf_src_file;
  err = bpf_object__load_xattr(&load_attr);
  if (test_case->fails) {
   CHECK(!err, "obj_load_fail",
         "should fail to load prog '%s'\n", probe_name);
   goto cleanup;
  } else {
   if (CHECK(err, "obj_load",
      "failed to load prog '%s': %d\n",
      probe_name, err))
    goto cleanup;
  }

  link = bpf_program__attach_raw_tracepoint(prog, "sys_enter");
  if (CHECK(IS_ERR(link), "attach_raw_tp", "err %ld\n",
     PTR_ERR(link)))
   goto cleanup;

  data_map = bpf_object__find_map_by_name(obj, "test_cor.bss");
  if (CHECK(!data_map, "find_data_map", "data map not found\n"))
   goto cleanup;

  memset(&data, 0, sizeof(data));
  memcpy(data.in, test_case->input, test_case->input_len);

  err = bpf_map_update_elem(bpf_map__fd(data_map),
       &zero, &data, 0);
  if (CHECK(err, "update_data_map",
     "failed to update .data map: %d\n", err))
   goto cleanup;


  usleep(1);

  err = bpf_map_lookup_elem(bpf_map__fd(data_map), &zero, &data);
  if (CHECK(err, "get_result",
     "failed to get output data: %d\n", err))
   goto cleanup;

  equal = memcmp(data.out, test_case->output,
          test_case->output_len) == 0;
  if (CHECK(!equal, "check_result",
     "input/output data don't match\n")) {
   int j;

   for (j = 0; j < test_case->input_len; j++) {
    printf("input byte #%d: 0x%02hhx\n",
           j, test_case->input[j]);
   }
   for (j = 0; j < test_case->output_len; j++) {
    printf("output byte #%d: EXP 0x%02hhx GOT 0x%02hhx\n",
           j, test_case->output[j], data.out[j]);
   }
   goto cleanup;
  }

cleanup:
  if (!IS_ERR_OR_NULL(link)) {
   bpf_link__destroy(link);
   link = ((void*)0);
  }
  bpf_object__close(obj);
 }
}
