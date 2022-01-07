
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int prog_type; int expected_attach_type; } ;


 int BPF_CGROUP_INET_SOCK_CREATE ;


__attribute__((used)) static void bpf_prog_load_fixup_attach_type(union bpf_attr *attr)
{
 switch (attr->prog_type) {
 case 128:



  if (!attr->expected_attach_type)
   attr->expected_attach_type =
    BPF_CGROUP_INET_SOCK_CREATE;
  break;
 }
}
