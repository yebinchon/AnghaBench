
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int attach_flags; int attach_type; int attach_bpf_fd; } ;
struct bpf_prog {int dummy; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
 int BPF_F_ATTACH_MASK ;

 int BPF_PROG_ATTACH ;
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
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 scalar_t__ bpf_prog_attach_check_attach_type (struct bpf_prog*,int ) ;
 struct bpf_prog* bpf_prog_get_type (int ,int) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int capable (int ) ;
 int cgroup_bpf_prog_attach (union bpf_attr const*,int,struct bpf_prog*) ;
 int lirc_prog_attach (union bpf_attr const*,struct bpf_prog*) ;
 int skb_flow_dissector_bpf_prog_attach (union bpf_attr const*,struct bpf_prog*) ;
 int sock_map_get_from_fd (union bpf_attr const*,struct bpf_prog*) ;

__attribute__((used)) static int bpf_prog_attach(const union bpf_attr *attr)
{
 enum bpf_prog_type ptype;
 struct bpf_prog *prog;
 int ret;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (CHECK_ATTR(BPF_PROG_ATTACH))
  return -EINVAL;

 if (attr->attach_flags & ~BPF_F_ATTACH_MASK)
  return -EINVAL;

 switch (attr->attach_type) {
 case 145:
 case 146:
  ptype = BPF_PROG_TYPE_CGROUP_SKB;
  break;
 case 144:
 case 150:
 case 147:
  ptype = BPF_PROG_TYPE_CGROUP_SOCK;
  break;
 case 152:
 case 149:
 case 151:
 case 148:
 case 139:
 case 137:
 case 140:
 case 138:
  ptype = BPF_PROG_TYPE_CGROUP_SOCK_ADDR;
  break;
 case 142:
  ptype = BPF_PROG_TYPE_SOCK_OPS;
  break;
 case 154:
  ptype = BPF_PROG_TYPE_CGROUP_DEVICE;
  break;
 case 130:
  ptype = 132;
  break;
 case 129:
 case 128:
  ptype = 131;
  break;
 case 135:
  ptype = 133;
  break;
 case 136:
  ptype = 134;
  break;
 case 141:
  ptype = BPF_PROG_TYPE_CGROUP_SYSCTL;
  break;
 case 153:
 case 143:
  ptype = BPF_PROG_TYPE_CGROUP_SOCKOPT;
  break;
 default:
  return -EINVAL;
 }

 prog = bpf_prog_get_type(attr->attach_bpf_fd, ptype);
 if (IS_ERR(prog))
  return PTR_ERR(prog);

 if (bpf_prog_attach_check_attach_type(prog, attr->attach_type)) {
  bpf_prog_put(prog);
  return -EINVAL;
 }

 switch (ptype) {
 case 131:
 case 132:
  ret = sock_map_get_from_fd(attr, prog);
  break;
 case 133:
  ret = lirc_prog_attach(attr, prog);
  break;
 case 134:
  ret = skb_flow_dissector_bpf_prog_attach(attr, prog);
  break;
 default:
  ret = cgroup_bpf_prog_attach(attr, ptype, prog);
 }

 if (ret)
  bpf_prog_put(prog);
 return ret;
}
