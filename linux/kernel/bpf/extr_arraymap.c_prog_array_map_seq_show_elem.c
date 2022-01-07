
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct bpf_map {int btf_value_type_id; int btf; } ;


 void* READ_ONCE (void*) ;
 void** array_map_lookup_elem (struct bpf_map*,void*) ;
 int btf_type_seq_show (int ,int ,int *,struct seq_file*) ;
 int prog_fd_array_sys_lookup_elem (void*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void prog_array_map_seq_show_elem(struct bpf_map *map, void *key,
      struct seq_file *m)
{
 void **elem, *ptr;
 u32 prog_id;

 rcu_read_lock();

 elem = array_map_lookup_elem(map, key);
 if (elem) {
  ptr = READ_ONCE(*elem);
  if (ptr) {
   seq_printf(m, "%u: ", *(u32 *)key);
   prog_id = prog_fd_array_sys_lookup_elem(ptr);
   btf_type_seq_show(map->btf, map->btf_value_type_id,
       &prog_id, m);
   seq_puts(m, "\n");
  }
 }

 rcu_read_unlock();
}
