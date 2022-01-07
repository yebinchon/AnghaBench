
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_load_program_attr {int prog_type; size_t insns_cnt; char* license; int prog_ifindex; struct bpf_insn const* insns; int kern_version; int expected_attach_type; } ;
struct bpf_insn {int dummy; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
typedef int __u32 ;


 int BPF_CGROUP_INET4_CONNECT ;
 int bpf_load_program_xattr (struct bpf_load_program_attr*,char*,size_t) ;
 int close (int) ;
 int get_kernel_version () ;

__attribute__((used)) static void
probe_load(enum bpf_prog_type prog_type, const struct bpf_insn *insns,
    size_t insns_cnt, char *buf, size_t buf_len, __u32 ifindex)
{
 struct bpf_load_program_attr xattr = {};
 int fd;

 switch (prog_type) {
 case 149:
  xattr.expected_attach_type = BPF_CGROUP_INET4_CONNECT;
  break;
 case 146:
  xattr.kern_version = get_kernel_version();
  break;
 case 129:
 case 132:
 case 136:
 case 137:
 case 130:
 case 128:
 case 140:
 case 152:
 case 151:
 case 144:
 case 143:
 case 141:
 case 131:
 case 133:
 case 153:
 case 135:
 case 139:
 case 138:
 case 142:
 case 145:
 case 134:
 case 147:
 case 148:
 case 150:
 default:
  break;
 }

 xattr.prog_type = prog_type;
 xattr.insns = insns;
 xattr.insns_cnt = insns_cnt;
 xattr.license = "GPL";
 xattr.prog_ifindex = ifindex;

 fd = bpf_load_program_xattr(&xattr, buf, buf_len);
 if (fd >= 0)
  close(fd);
}
