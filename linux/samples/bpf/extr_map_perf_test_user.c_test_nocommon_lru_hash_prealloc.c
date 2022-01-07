
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOCOMMON_LRU_HASH_PREALLOC ;
 int do_test_lru (int ,int) ;

__attribute__((used)) static void test_nocommon_lru_hash_prealloc(int cpu)
{
 do_test_lru(NOCOMMON_LRU_HASH_PREALLOC, cpu);
}
