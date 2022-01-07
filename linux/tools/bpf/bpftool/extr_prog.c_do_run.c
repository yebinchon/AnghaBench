
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_test_run_attr {unsigned int data_size_out; unsigned int ctx_size_out; int prog_fd; unsigned int repeat; int retval; int duration; void* ctx_out; void* data_out; void* ctx_in; void* data_in; int ctx_size_in; int data_size_in; int member_0; } ;


 char* GET_ARG () ;
 int NEXT_ARG () ;
 int REQ_ARGS (int) ;
 unsigned int SZ_32K ;
 int alloc_run_data (void**,unsigned int) ;
 int bpf_prog_test_run_xattr (struct bpf_prog_test_run_attr*) ;
 scalar_t__ check_single_stdin (char*,char*) ;
 scalar_t__ detect_common_prefix (char*,char*,char*,char*,int *) ;
 int errno ;
 int fprintf (int ,char*,int,char*,int) ;
 int free (void*) ;
 int get_run_data (char*,void**,int *) ;
 scalar_t__ is_prefix (char*,char*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_object (int ) ;
 int jsonw_start_object (int ) ;
 int jsonw_uint_field (int ,char*,int) ;
 int p_err (char*,char*) ;
 scalar_t__ print_run_output (void*,int,char*,char*) ;
 int prog_parse_fd (int*,char***) ;
 int stdout ;
 char* strerror (int ) ;
 void* strtoul (char*,char**,int ) ;

__attribute__((used)) static int do_run(int argc, char **argv)
{
 char *data_fname_in = ((void*)0), *data_fname_out = ((void*)0);
 char *ctx_fname_in = ((void*)0), *ctx_fname_out = ((void*)0);
 struct bpf_prog_test_run_attr test_attr = {0};
 const unsigned int default_size = SZ_32K;
 void *data_in = ((void*)0), *data_out = ((void*)0);
 void *ctx_in = ((void*)0), *ctx_out = ((void*)0);
 unsigned int repeat = 1;
 int fd, err;

 if (!REQ_ARGS(4))
  return -1;

 fd = prog_parse_fd(&argc, &argv);
 if (fd < 0)
  return -1;

 while (argc) {
  if (detect_common_prefix(*argv, "data_in", "data_out",
      "data_size_out", ((void*)0)))
   return -1;
  if (detect_common_prefix(*argv, "ctx_in", "ctx_out",
      "ctx_size_out", ((void*)0)))
   return -1;

  if (is_prefix(*argv, "data_in")) {
   NEXT_ARG();
   if (!REQ_ARGS(1))
    return -1;

   data_fname_in = GET_ARG();
   if (check_single_stdin(data_fname_in, ctx_fname_in))
    return -1;
  } else if (is_prefix(*argv, "data_out")) {
   NEXT_ARG();
   if (!REQ_ARGS(1))
    return -1;

   data_fname_out = GET_ARG();
  } else if (is_prefix(*argv, "data_size_out")) {
   char *endptr;

   NEXT_ARG();
   if (!REQ_ARGS(1))
    return -1;

   test_attr.data_size_out = strtoul(*argv, &endptr, 0);
   if (*endptr) {
    p_err("can't parse %s as output data size",
          *argv);
    return -1;
   }
   NEXT_ARG();
  } else if (is_prefix(*argv, "ctx_in")) {
   NEXT_ARG();
   if (!REQ_ARGS(1))
    return -1;

   ctx_fname_in = GET_ARG();
   if (check_single_stdin(data_fname_in, ctx_fname_in))
    return -1;
  } else if (is_prefix(*argv, "ctx_out")) {
   NEXT_ARG();
   if (!REQ_ARGS(1))
    return -1;

   ctx_fname_out = GET_ARG();
  } else if (is_prefix(*argv, "ctx_size_out")) {
   char *endptr;

   NEXT_ARG();
   if (!REQ_ARGS(1))
    return -1;

   test_attr.ctx_size_out = strtoul(*argv, &endptr, 0);
   if (*endptr) {
    p_err("can't parse %s as output context size",
          *argv);
    return -1;
   }
   NEXT_ARG();
  } else if (is_prefix(*argv, "repeat")) {
   char *endptr;

   NEXT_ARG();
   if (!REQ_ARGS(1))
    return -1;

   repeat = strtoul(*argv, &endptr, 0);
   if (*endptr) {
    p_err("can't parse %s as repeat number",
          *argv);
    return -1;
   }
   NEXT_ARG();
  } else {
   p_err("expected no more arguments, 'data_in', 'data_out', 'data_size_out', 'ctx_in', 'ctx_out', 'ctx_size_out' or 'repeat', got: '%s'?",
         *argv);
   return -1;
  }
 }

 err = get_run_data(data_fname_in, &data_in, &test_attr.data_size_in);
 if (err)
  return -1;

 if (data_in) {
  if (!test_attr.data_size_out)
   test_attr.data_size_out = default_size;
  err = alloc_run_data(&data_out, test_attr.data_size_out);
  if (err)
   goto free_data_in;
 }

 err = get_run_data(ctx_fname_in, &ctx_in, &test_attr.ctx_size_in);
 if (err)
  goto free_data_out;

 if (ctx_in) {
  if (!test_attr.ctx_size_out)
   test_attr.ctx_size_out = default_size;
  err = alloc_run_data(&ctx_out, test_attr.ctx_size_out);
  if (err)
   goto free_ctx_in;
 }

 test_attr.prog_fd = fd;
 test_attr.repeat = repeat;
 test_attr.data_in = data_in;
 test_attr.data_out = data_out;
 test_attr.ctx_in = ctx_in;
 test_attr.ctx_out = ctx_out;

 err = bpf_prog_test_run_xattr(&test_attr);
 if (err) {
  p_err("failed to run program: %s", strerror(errno));
  goto free_ctx_out;
 }

 err = 0;

 if (json_output)
  jsonw_start_object(json_wtr);




 if (test_attr.data_size_out)
  err += print_run_output(test_attr.data_out,
     test_attr.data_size_out,
     data_fname_out, "data_out");
 if (test_attr.ctx_size_out)
  err += print_run_output(test_attr.ctx_out,
     test_attr.ctx_size_out,
     ctx_fname_out, "ctx_out");

 if (json_output) {
  jsonw_uint_field(json_wtr, "retval", test_attr.retval);
  jsonw_uint_field(json_wtr, "duration", test_attr.duration);
  jsonw_end_object(json_wtr);
 } else {
  fprintf(stdout, "Return value: %u, duration%s: %uns\n",
   test_attr.retval,
   repeat > 1 ? " (average)" : "", test_attr.duration);
 }

free_ctx_out:
 free(ctx_out);
free_ctx_in:
 free(ctx_in);
free_data_out:
 free(data_out);
free_data_in:
 free(data_in);

 return err;
}
