
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int run_parallel (int,int ,int *) ;
 int test_arraymap ;
 int test_arraymap_percpu ;
 int test_hashmap ;
 int test_hashmap_percpu ;
 int test_hashmap_sizes ;
 int test_hashmap_walk ;

__attribute__((used)) static void test_map_stress(void)
{
 run_parallel(100, test_hashmap, ((void*)0));
 run_parallel(100, test_hashmap_percpu, ((void*)0));
 run_parallel(100, test_hashmap_sizes, ((void*)0));
 run_parallel(100, test_hashmap_walk, ((void*)0));

 run_parallel(100, test_arraymap, ((void*)0));
 run_parallel(100, test_arraymap_percpu, ((void*)0));
}
