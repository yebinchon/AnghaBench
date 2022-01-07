
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_info {int id; } ;
typedef int info ;
typedef int __u32 ;


 int bpf_obj_get_info_by_fd (int,struct bpf_prog_info*,int*) ;
 int bpf_set_link_xdp_fd (int,int,int ) ;
 int errno ;
 int printf (char*,char const*) ;
 int prog_id ;
 char* strerror (int ) ;
 int xdp_flags ;

__attribute__((used)) static int do_attach(int idx, int fd, const char *name)
{
 struct bpf_prog_info info = {};
 __u32 info_len = sizeof(info);
 int err;

 err = bpf_set_link_xdp_fd(idx, fd, xdp_flags);
 if (err < 0) {
  printf("ERROR: failed to attach program to %s\n", name);
  return err;
 }

 err = bpf_obj_get_info_by_fd(fd, &info, &info_len);
 if (err) {
  printf("can't get prog info - %s\n", strerror(errno));
  return err;
 }
 prog_id = info.id;

 return err;
}
