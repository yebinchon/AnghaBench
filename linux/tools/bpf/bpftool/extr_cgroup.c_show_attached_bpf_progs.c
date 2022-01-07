
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;
typedef int buf ;
typedef scalar_t__ __u32 ;


 scalar_t__ ARRAY_SIZE (scalar_t__*) ;


 int * attach_type_strings ;
 int bpf_prog_query (int,int,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int query_flags ;
 int show_bpf_prog (scalar_t__,int ,char const*,int) ;
 int snprintf (char*,int,char*,scalar_t__) ;

__attribute__((used)) static int show_attached_bpf_progs(int cgroup_fd, enum bpf_attach_type type,
       int level)
{
 const char *attach_flags_str;
 __u32 prog_ids[1024] = {0};
 __u32 prog_cnt, iter;
 __u32 attach_flags;
 char buf[32];
 int ret;

 prog_cnt = ARRAY_SIZE(prog_ids);
 ret = bpf_prog_query(cgroup_fd, type, query_flags, &attach_flags,
        prog_ids, &prog_cnt);
 if (ret)
  return ret;

 if (prog_cnt == 0)
  return 0;

 switch (attach_flags) {
 case 129:
  attach_flags_str = "multi";
  break;
 case 128:
  attach_flags_str = "override";
  break;
 case 0:
  attach_flags_str = "";
  break;
 default:
  snprintf(buf, sizeof(buf), "unknown(%x)", attach_flags);
  attach_flags_str = buf;
 }

 for (iter = 0; iter < prog_cnt; iter++)
  show_bpf_prog(prog_ids[iter], attach_type_strings[type],
         attach_flags_str, level);

 return 0;
}
