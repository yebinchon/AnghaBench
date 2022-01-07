
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_attach_info {int flow_dissector_id; } ;
typedef int __u32 ;


 int ARRAY_SIZE (int*) ;
 int BPF_FLOW_DISSECTOR ;
 scalar_t__ EINVAL ;
 int O_RDONLY ;
 int bpf_prog_query (int,int ,int ,int*,int*,int*) ;
 int close (int) ;
 scalar_t__ errno ;
 int open (char*,int ) ;
 int p_err (char*,int ) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int query_flow_dissector(struct bpf_attach_info *attach_info)
{
 __u32 attach_flags;
 __u32 prog_ids[1];
 __u32 prog_cnt;
 int err;
 int fd;

 fd = open("/proc/self/ns/net", O_RDONLY);
 if (fd < 0) {
  p_err("can't open /proc/self/ns/net: %s",
        strerror(errno));
  return -1;
 }
 prog_cnt = ARRAY_SIZE(prog_ids);
 err = bpf_prog_query(fd, BPF_FLOW_DISSECTOR, 0,
        &attach_flags, prog_ids, &prog_cnt);
 close(fd);
 if (err) {
  if (errno == EINVAL) {



   errno = 0;
   return 0;
  }
  p_err("can't query prog: %s", strerror(errno));
  return -1;
 }

 if (prog_cnt == 1)
  attach_info->flow_dissector_id = prog_ids[0];

 return 0;
}
