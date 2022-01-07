
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct bpf_map {int btf_value_type_id; int btf; scalar_t__ btf_key_type_id; } ;


 void* array_map_lookup_elem (struct bpf_map*,void*) ;
 int btf_type_seq_show (int ,int ,void*,struct seq_file*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void array_map_seq_show_elem(struct bpf_map *map, void *key,
        struct seq_file *m)
{
 void *value;

 rcu_read_lock();

 value = array_map_lookup_elem(map, key);
 if (!value) {
  rcu_read_unlock();
  return;
 }

 if (map->btf_key_type_id)
  seq_printf(m, "%u: ", *(u32 *)key);
 btf_type_seq_show(map->btf, map->btf_value_type_id, value, m);
 seq_puts(m, "\n");

 rcu_read_unlock();
}
