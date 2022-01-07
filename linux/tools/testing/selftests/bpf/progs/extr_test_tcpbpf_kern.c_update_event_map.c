
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpbpf_globals {int event_map; int member_0; } ;
typedef int __u32 ;


 int BPF_ANY ;
 struct tcpbpf_globals* bpf_map_lookup_elem (int *,int *) ;
 int bpf_map_update_elem (int *,int *,struct tcpbpf_globals*,int ) ;
 int global_map ;

__attribute__((used)) static inline void update_event_map(int event)
{
 __u32 key = 0;
 struct tcpbpf_globals g, *gp;

 gp = bpf_map_lookup_elem(&global_map, &key);
 if (gp == ((void*)0)) {
  struct tcpbpf_globals g = {0};

  g.event_map |= (1 << event);
  bpf_map_update_elem(&global_map, &key, &g,
       BPF_ANY);
 } else {
  g = *gp;
  g.event_map |= (1 << event);
  bpf_map_update_elem(&global_map, &key, &g,
       BPF_ANY);
 }
}
