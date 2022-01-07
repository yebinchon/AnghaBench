
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sock {int sk_callback_lock; int * sk_user_data; } ;
struct reuseport_array {int * ptrs; } ;
struct bpf_map {size_t max_entries; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int bpf_map_area_free (struct reuseport_array*) ;
 struct sock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct reuseport_array* reuseport_array (struct bpf_map*) ;
 int synchronize_rcu () ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void reuseport_array_free(struct bpf_map *map)
{
 struct reuseport_array *array = reuseport_array(map);
 struct sock *sk;
 u32 i;

 synchronize_rcu();
 rcu_read_lock();
 for (i = 0; i < map->max_entries; i++) {
  sk = rcu_dereference(array->ptrs[i]);
  if (sk) {
   write_lock_bh(&sk->sk_callback_lock);





   sk->sk_user_data = ((void*)0);
   write_unlock_bh(&sk->sk_callback_lock);
   RCU_INIT_POINTER(array->ptrs[i], ((void*)0));
  }
 }
 rcu_read_unlock();





 bpf_map_area_free(array);
}
