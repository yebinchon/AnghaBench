
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_info {int dummy; } ;
typedef int info ;
typedef int __u32 ;


 int bpf_obj_get_info_by_fd (int,struct bpf_prog_info*,int*) ;
 int errno ;
 scalar_t__ json_output ;
 int p_err (char*,int ) ;
 int print_prog_json (struct bpf_prog_info*,int) ;
 int print_prog_plain (struct bpf_prog_info*,int) ;
 int strerror (int ) ;

__attribute__((used)) static int show_prog(int fd)
{
 struct bpf_prog_info info = {};
 __u32 len = sizeof(info);
 int err;

 err = bpf_obj_get_info_by_fd(fd, &info, &len);
 if (err) {
  p_err("can't get prog info: %s", strerror(errno));
  return -1;
 }

 if (json_output)
  print_prog_json(&info, fd);
 else
  print_prog_plain(&info, fd);

 return 0;
}
