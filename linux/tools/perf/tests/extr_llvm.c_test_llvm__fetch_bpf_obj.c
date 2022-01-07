
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum test_llvm__testcase { ____Placeholder_test_llvm__testcase } test_llvm__testcase ;
struct TYPE_4__ {char* source; char* desc; int should_load_fail; } ;
struct TYPE_3__ {char* clang_bpf_cmd_template; char* clang_opt; int user_set_param; } ;


 int TEST_FAIL ;
 int TEST_OK ;
 int TEST_SKIP ;
 int __LLVM_TESTCASE_MAX ;
 int asprintf (char**,char*,char const*,...) ;
 TYPE_2__* bpf_source_table ;
 int free (char*) ;
 int llvm__compile_bpf (char*,void**,size_t*) ;
 scalar_t__ llvm__search_clang () ;
 TYPE_1__ llvm_param ;
 int pr_debug (char*,...) ;
 char* strdup (char*) ;
 int verbose ;

int
test_llvm__fetch_bpf_obj(void **p_obj_buf,
    size_t *p_obj_buf_sz,
    enum test_llvm__testcase idx,
    bool force,
    bool *should_load_fail)
{
 const char *source;
 const char *desc;
 const char *tmpl_old, *clang_opt_old;
 char *tmpl_new = ((void*)0), *clang_opt_new = ((void*)0);
 int err, old_verbose, ret = TEST_FAIL;

 if (idx >= __LLVM_TESTCASE_MAX)
  return TEST_FAIL;

 source = bpf_source_table[idx].source;
 desc = bpf_source_table[idx].desc;
 if (should_load_fail)
  *should_load_fail = bpf_source_table[idx].should_load_fail;





 if (!force && (verbose <= 0 &&
         !llvm_param.user_set_param &&
         llvm__search_clang())) {
  pr_debug("No clang and no verbosive, skip this test\n");
  return TEST_SKIP;
 }





 old_verbose = verbose;
 if (verbose == 0)
  verbose = -1;

 *p_obj_buf = ((void*)0);
 *p_obj_buf_sz = 0;

 if (!llvm_param.clang_bpf_cmd_template)
  goto out;

 if (!llvm_param.clang_opt)
  llvm_param.clang_opt = strdup("");

 err = asprintf(&tmpl_new, "echo '%s' | %s%s", source,
         llvm_param.clang_bpf_cmd_template,
         old_verbose ? "" : " 2>/dev/null");
 if (err < 0)
  goto out;
 err = asprintf(&clang_opt_new, "-xc %s", llvm_param.clang_opt);
 if (err < 0)
  goto out;

 tmpl_old = llvm_param.clang_bpf_cmd_template;
 llvm_param.clang_bpf_cmd_template = tmpl_new;
 clang_opt_old = llvm_param.clang_opt;
 llvm_param.clang_opt = clang_opt_new;

 err = llvm__compile_bpf("-", p_obj_buf, p_obj_buf_sz);

 llvm_param.clang_bpf_cmd_template = tmpl_old;
 llvm_param.clang_opt = clang_opt_old;

 verbose = old_verbose;
 if (err)
  goto out;

 ret = TEST_OK;
out:
 free(tmpl_new);
 free(clang_opt_new);
 if (ret != TEST_OK)
  pr_debug("Failed to compile test case: '%s'\n", desc);
 return ret;
}
