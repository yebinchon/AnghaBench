
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 int alloc_anon_50M_check ;
 int alloc_pagecache_50M_check ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 char* cg_name (char const*,char*) ;
 long cg_read_long (char*,char*) ;
 scalar_t__ cg_run (char*,int ,int *) ;
 int free (char*) ;

__attribute__((used)) static int test_memcg_current(const char *root)
{
 int ret = KSFT_FAIL;
 long current;
 char *memcg;

 memcg = cg_name(root, "memcg_test");
 if (!memcg)
  goto cleanup;

 if (cg_create(memcg))
  goto cleanup;

 current = cg_read_long(memcg, "memory.current");
 if (current != 0)
  goto cleanup;

 if (cg_run(memcg, alloc_anon_50M_check, ((void*)0)))
  goto cleanup;

 if (cg_run(memcg, alloc_pagecache_50M_check, ((void*)0)))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 cg_destroy(memcg);
 free(memcg);

 return ret;
}
