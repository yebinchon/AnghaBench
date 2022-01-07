
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int BPF_FLOW_DISSECTOR ;
 int EINVAL ;
 int NEXT_ARG () ;
 int REQ_ARGS (int) ;
 int __MAX_BPF_ATTACH_TYPE ;
 int map_parse_fd (int*,char***) ;
 int p_err (char*) ;
 int parse_attach_type (char*) ;
 int prog_parse_fd (int*,char***) ;

__attribute__((used)) static int parse_attach_detach_args(int argc, char **argv, int *progfd,
        enum bpf_attach_type *attach_type,
        int *mapfd)
{
 if (!REQ_ARGS(3))
  return -EINVAL;

 *progfd = prog_parse_fd(&argc, &argv);
 if (*progfd < 0)
  return *progfd;

 *attach_type = parse_attach_type(*argv);
 if (*attach_type == __MAX_BPF_ATTACH_TYPE) {
  p_err("invalid attach/detach type");
  return -EINVAL;
 }

 if (*attach_type == BPF_FLOW_DISSECTOR) {
  *mapfd = -1;
  return 0;
 }

 NEXT_ARG();
 if (!REQ_ARGS(2))
  return -EINVAL;

 *mapfd = map_parse_fd(&argc, &argv);
 if (*mapfd < 0)
  return *mapfd;

 return 0;
}
