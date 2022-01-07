
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_arraymap (int ,int *) ;
 int test_arraymap_percpu (int ,int *) ;
 int test_arraymap_percpu_many_keys () ;
 int test_devmap (int ,int *) ;
 int test_devmap_hash (int ,int *) ;
 int test_hashmap (int ,int *) ;
 int test_hashmap_percpu (int ,int *) ;
 int test_hashmap_walk (int ,int *) ;
 int test_hashmap_zero_seed () ;
 int test_map_in_map () ;
 int test_map_large () ;
 int test_map_parallel () ;
 int test_map_rdonly () ;
 int test_map_stress () ;
 int test_map_wronly () ;
 int test_queuemap (int ,int *) ;
 int test_reuseport_array () ;
 int test_sockmap (int ,int *) ;
 int test_stackmap (int ,int *) ;

__attribute__((used)) static void run_all_tests(void)
{
 test_hashmap(0, ((void*)0));
 test_hashmap_percpu(0, ((void*)0));
 test_hashmap_walk(0, ((void*)0));
 test_hashmap_zero_seed();

 test_arraymap(0, ((void*)0));
 test_arraymap_percpu(0, ((void*)0));

 test_arraymap_percpu_many_keys();

 test_devmap(0, ((void*)0));
 test_devmap_hash(0, ((void*)0));
 test_sockmap(0, ((void*)0));

 test_map_large();
 test_map_parallel();
 test_map_stress();

 test_map_rdonly();
 test_map_wronly();

 test_reuseport_array();

 test_queuemap(0, ((void*)0));
 test_stackmap(0, ((void*)0));

 test_map_in_map();
}
