
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int O_RDONLY ;
 int __MAX_BPF_ATTACH_TYPE ;
 scalar_t__ bpf_prog_detach2 (int,int,int) ;
 int close (int) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_null (int ) ;
 int open (char*,int ) ;
 int p_err (char*,...) ;
 int parse_attach_type (char*) ;
 int prog_parse_fd (int*,char***) ;

__attribute__((used)) static int do_detach(int argc, char **argv)
{
 enum bpf_attach_type attach_type;
 int prog_fd, cgroup_fd;
 int ret = -1;

 if (argc < 4) {
  p_err("too few parameters for cgroup detach");
  goto exit;
 }

 cgroup_fd = open(argv[0], O_RDONLY);
 if (cgroup_fd < 0) {
  p_err("can't open cgroup %s", argv[0]);
  goto exit;
 }

 attach_type = parse_attach_type(argv[1]);
 if (attach_type == __MAX_BPF_ATTACH_TYPE) {
  p_err("invalid attach type");
  goto exit_cgroup;
 }

 argc -= 2;
 argv = &argv[2];
 prog_fd = prog_parse_fd(&argc, &argv);
 if (prog_fd < 0)
  goto exit_cgroup;

 if (bpf_prog_detach2(prog_fd, cgroup_fd, attach_type)) {
  p_err("failed to detach program");
  goto exit_prog;
 }

 if (json_output)
  jsonw_null(json_wtr);

 ret = 0;

exit_prog:
 close(prog_fd);
exit_cgroup:
 close(cgroup_fd);
exit:
 return ret;
}
