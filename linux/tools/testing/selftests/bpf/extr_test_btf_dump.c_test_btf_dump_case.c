
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int test_file ;
struct TYPE_2__ {int * ctx; } ;
struct btf_dump_test_case {char* name; TYPE_1__ opts; } ;
struct btf {int dummy; } ;
typedef int out_file ;
typedef int diff_cmd ;
typedef int FILE ;


 scalar_t__ CHECK (int,char*,...) ;
 int IS_ERR (struct btf*) ;
 int PTR_ERR (struct btf*) ;
 int R_OK ;
 int access (char*,int ) ;
 int btf__free (struct btf*) ;
 struct btf* btf__parse_elf (char*,int *) ;
 int btf_dump_all_types (struct btf*,TYPE_1__*) ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fprintf (int ,char*,...) ;
 int mkstemp (char*) ;
 int remove (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int stderr ;
 int strerror (int ) ;
 int system (char*) ;

int test_btf_dump_case(int n, struct btf_dump_test_case *test_case)
{
 char test_file[256], out_file[256], diff_cmd[1024];
 struct btf *btf = ((void*)0);
 int err = 0, fd = -1;
 FILE *f = ((void*)0);

 fprintf(stderr, "Test case #%d (%s): ", n, test_case->name);

 snprintf(test_file, sizeof(test_file), "%s.o", test_case->name);

 btf = btf__parse_elf(test_file, ((void*)0));
 if (CHECK(IS_ERR(btf),
     "failed to load test BTF: %ld\n", PTR_ERR(btf))) {
  err = -PTR_ERR(btf);
  btf = ((void*)0);
  goto done;
 }

 snprintf(out_file, sizeof(out_file),
   "/tmp/%s.output.XXXXXX", test_case->name);
 fd = mkstemp(out_file);
 if (CHECK(fd < 0, "failed to create temp output file: %d\n", fd)) {
  err = fd;
  goto done;
 }
 f = fdopen(fd, "w");
 if (CHECK(f == ((void*)0), "failed to open temp output file: %s(%d)\n",
    strerror(errno), errno)) {
  close(fd);
  goto done;
 }

 test_case->opts.ctx = f;
 err = btf_dump_all_types(btf, &test_case->opts);
 fclose(f);
 close(fd);
 if (CHECK(err, "failure during C dumping: %d\n", err)) {
  goto done;
 }

 snprintf(test_file, sizeof(test_file), "progs/%s.c", test_case->name);
 if (access(test_file, R_OK) == -1)




  snprintf(test_file, sizeof(test_file), "%s.c",
   test_case->name);







 snprintf(diff_cmd, sizeof(diff_cmd),
   "awk '/START-EXPECTED-OUTPUT/{out=1;next} "
   "/END-EXPECTED-OUTPUT/{out=0} "
   "/\\/\\*|\\*\\//{next} "
   "out {sub(/^[ \\t]*\\*/, \"\"); print}' '%s' | diff -u - '%s'",
   test_file, out_file);
 err = system(diff_cmd);
 if (CHECK(err,
    "differing test output, output=%s, err=%d, diff cmd:\n%s\n",
    out_file, err, diff_cmd))
  goto done;

 remove(out_file);
 fprintf(stderr, "OK\n");

done:
 btf__free(btf);
 return err;
}
