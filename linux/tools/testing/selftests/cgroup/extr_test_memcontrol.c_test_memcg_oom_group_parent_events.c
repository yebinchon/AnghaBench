
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 scalar_t__ MB (int) ;
 int alloc_anon ;
 int alloc_anon_noexit ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 char* cg_name (char const*,char*) ;
 int cg_run (char*,int ,void*) ;
 int cg_run_nowait (char*,int ,void*) ;
 scalar_t__ cg_test_proc_killed (char*) ;
 scalar_t__ cg_write (char*,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static int test_memcg_oom_group_parent_events(const char *root)
{
 int ret = KSFT_FAIL;
 char *parent, *child;

 parent = cg_name(root, "memcg_test_0");
 child = cg_name(root, "memcg_test_0/memcg_test_1");

 if (!parent || !child)
  goto cleanup;

 if (cg_create(parent))
  goto cleanup;

 if (cg_create(child))
  goto cleanup;

 if (cg_write(parent, "memory.max", "80M"))
  goto cleanup;

 if (cg_write(parent, "memory.swap.max", "0"))
  goto cleanup;

 if (cg_write(parent, "memory.oom.group", "1"))
  goto cleanup;

 cg_run_nowait(parent, alloc_anon_noexit, (void *) MB(60));
 cg_run_nowait(child, alloc_anon_noexit, (void *) MB(1));
 cg_run_nowait(child, alloc_anon_noexit, (void *) MB(1));

 if (!cg_run(child, alloc_anon, (void *)MB(100)))
  goto cleanup;

 if (cg_test_proc_killed(child))
  goto cleanup;
 if (cg_test_proc_killed(parent))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 if (child)
  cg_destroy(child);
 if (parent)
  cg_destroy(parent);
 free(child);
 free(parent);

 return ret;
}
