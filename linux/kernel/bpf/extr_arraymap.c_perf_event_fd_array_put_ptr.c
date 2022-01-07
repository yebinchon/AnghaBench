
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_event_entry_free_rcu (void*) ;

__attribute__((used)) static void perf_event_fd_array_put_ptr(void *ptr)
{
 bpf_event_entry_free_rcu(ptr);
}
