
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LRU_HASH_PREALLOC ;
 int do_test_lru (int ,int) ;

__attribute__((used)) static void test_lru_hash_prealloc(int cpu)
{
 do_test_lru(LRU_HASH_PREALLOC, cpu);
}
