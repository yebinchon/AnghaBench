
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int attach_type; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
 int BPF_PROG_DETACH ;
 int BPF_PROG_TYPE_CGROUP_DEVICE ;
 int BPF_PROG_TYPE_CGROUP_SKB ;
 int BPF_PROG_TYPE_CGROUP_SOCK ;
 int BPF_PROG_TYPE_CGROUP_SOCKOPT ;
 int BPF_PROG_TYPE_CGROUP_SOCK_ADDR ;
 int BPF_PROG_TYPE_CGROUP_SYSCTL ;
 int BPF_PROG_TYPE_SOCK_OPS ;



 int CAP_NET_ADMIN ;
 scalar_t__ CHECK_ATTR (int ) ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 int cgroup_bpf_prog_detach (union bpf_attr const*,int) ;
 int lirc_prog_detach (union bpf_attr const*) ;
 int skb_flow_dissector_bpf_prog_detach (union bpf_attr const*) ;
 int sock_map_get_from_fd (union bpf_attr const*,int *) ;

__attribute__((used)) static int bpf_prog_detach(const union bpf_attr *attr)
{
 enum bpf_prog_type ptype;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (CHECK_ATTR(BPF_PROG_DETACH))
  return -EINVAL;

 switch (attr->attach_type) {
 case 141:
 case 142:
  ptype = BPF_PROG_TYPE_CGROUP_SKB;
  break;
 case 140:
 case 146:
 case 143:
  ptype = BPF_PROG_TYPE_CGROUP_SOCK;
  break;
 case 148:
 case 145:
 case 147:
 case 144:
 case 135:
 case 133:
 case 136:
 case 134:
  ptype = BPF_PROG_TYPE_CGROUP_SOCK_ADDR;
  break;
 case 138:
  ptype = BPF_PROG_TYPE_SOCK_OPS;
  break;
 case 150:
  ptype = BPF_PROG_TYPE_CGROUP_DEVICE;
  break;
 case 130:
  return sock_map_get_from_fd(attr, ((void*)0));
 case 129:
 case 128:
  return sock_map_get_from_fd(attr, ((void*)0));
 case 131:
  return lirc_prog_detach(attr);
 case 132:
  return skb_flow_dissector_bpf_prog_detach(attr);
 case 137:
  ptype = BPF_PROG_TYPE_CGROUP_SYSCTL;
  break;
 case 149:
 case 139:
  ptype = BPF_PROG_TYPE_CGROUP_SOCKOPT;
  break;
 default:
  return -EINVAL;
 }

 return cgroup_bpf_prog_detach(attr, ptype);
}
