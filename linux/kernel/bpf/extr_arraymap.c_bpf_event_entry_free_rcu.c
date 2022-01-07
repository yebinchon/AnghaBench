
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_event_entry {int rcu; } ;


 int __bpf_event_entry_free ;
 int call_rcu (int *,int ) ;

__attribute__((used)) static void bpf_event_entry_free_rcu(struct bpf_event_entry *ee)
{
 call_rcu(&ee->rcu, __bpf_event_entry_free);
}
