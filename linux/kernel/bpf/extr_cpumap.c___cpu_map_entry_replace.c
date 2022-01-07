
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct bpf_cpu_map_entry {int kthread_stop_wq; int rcu; } ;
struct bpf_cpu_map {int * cpu_map; } ;


 int INIT_WORK (int *,int ) ;
 int __cpu_map_entry_free ;
 int call_rcu (int *,int ) ;
 int cpu_map_kthread_stop ;
 int schedule_work (int *) ;
 struct bpf_cpu_map_entry* xchg (int *,struct bpf_cpu_map_entry*) ;

__attribute__((used)) static void __cpu_map_entry_replace(struct bpf_cpu_map *cmap,
        u32 key_cpu, struct bpf_cpu_map_entry *rcpu)
{
 struct bpf_cpu_map_entry *old_rcpu;

 old_rcpu = xchg(&cmap->cpu_map[key_cpu], rcpu);
 if (old_rcpu) {
  call_rcu(&old_rcpu->rcu, __cpu_map_entry_free);
  INIT_WORK(&old_rcpu->kthread_stop_wq, cpu_map_kthread_stop);
  schedule_work(&old_rcpu->kthread_stop_wq);
 }
}
