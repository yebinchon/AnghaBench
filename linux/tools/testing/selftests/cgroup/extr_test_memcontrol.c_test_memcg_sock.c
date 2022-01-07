
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_server_args {unsigned short port; int * ctl; } ;
typedef int err ;


 int EADDRINUSE ;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 int KSFT_SKIP ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 char* cg_name (char const*,char*) ;
 scalar_t__ cg_read_key_long (char*,char*,char*) ;
 scalar_t__ cg_read_long (char*,char*) ;
 int cg_run_nowait (char*,int ,struct tcp_server_args*) ;
 int close (int ) ;
 int free (char*) ;
 scalar_t__ pipe (int *) ;
 int rand () ;
 int read (int ,int*,int) ;
 int tcp_client (char*,unsigned short) ;
 int tcp_server ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int test_memcg_sock(const char *root)
{
 int bind_retries = 5, ret = KSFT_FAIL, pid, err;
 unsigned short port;
 char *memcg;

 memcg = cg_name(root, "memcg_test");
 if (!memcg)
  goto cleanup;

 if (cg_create(memcg))
  goto cleanup;

 while (bind_retries--) {
  struct tcp_server_args args;

  if (pipe(args.ctl))
   goto cleanup;

  port = args.port = 1000 + rand() % 60000;

  pid = cg_run_nowait(memcg, tcp_server, &args);
  if (pid < 0)
   goto cleanup;

  close(args.ctl[1]);
  if (read(args.ctl[0], &err, sizeof(err)) != sizeof(err))
   goto cleanup;
  close(args.ctl[0]);

  if (!err)
   break;
  if (err != EADDRINUSE)
   goto cleanup;

  waitpid(pid, ((void*)0), 0);
 }

 if (err == EADDRINUSE) {
  ret = KSFT_SKIP;
  goto cleanup;
 }

 if (tcp_client(memcg, port) != KSFT_PASS)
  goto cleanup;

 waitpid(pid, &err, 0);
 if (WEXITSTATUS(err))
  goto cleanup;

 if (cg_read_long(memcg, "memory.current") < 0)
  goto cleanup;

 if (cg_read_key_long(memcg, "memory.stat", "sock "))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 cg_destroy(memcg);
 free(memcg);

 return ret;
}
