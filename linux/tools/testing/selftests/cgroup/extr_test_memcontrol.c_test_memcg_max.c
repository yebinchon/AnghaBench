
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 long MB (int) ;
 int alloc_anon ;
 int alloc_pagecache_max_30M ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 char* cg_name (char const*,char*) ;
 long cg_read_key_long (char*,char*,char*) ;
 long cg_read_long (char*,char*) ;
 scalar_t__ cg_read_strcmp (char*,char*,char*) ;
 scalar_t__ cg_run (char*,int ,void*) ;
 scalar_t__ cg_write (char*,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static int test_memcg_max(const char *root)
{
 int ret = KSFT_FAIL;
 char *memcg;
 long current, max;

 memcg = cg_name(root, "memcg_test");
 if (!memcg)
  goto cleanup;

 if (cg_create(memcg))
  goto cleanup;

 if (cg_read_strcmp(memcg, "memory.max", "max\n"))
  goto cleanup;

 if (cg_write(memcg, "memory.swap.max", "0"))
  goto cleanup;

 if (cg_write(memcg, "memory.max", "30M"))
  goto cleanup;


 if (!cg_run(memcg, alloc_anon, (void *)MB(100)))
  goto cleanup;

 if (cg_run(memcg, alloc_pagecache_max_30M, ((void*)0)))
  goto cleanup;

 current = cg_read_long(memcg, "memory.current");
 if (current > MB(30) || !current)
  goto cleanup;

 max = cg_read_key_long(memcg, "memory.events", "max ");
 if (max <= 0)
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 cg_destroy(memcg);
 free(memcg);

 return ret;
}
