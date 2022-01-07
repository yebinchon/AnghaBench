
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int bpf_obj_get_info_by_fd (int,void*,int *) ;
 int close (int) ;
 int errno ;
 int map_parse_fd (int*,char***) ;
 int p_err (char*,int ) ;
 int strerror (int ) ;

int map_parse_fd_and_info(int *argc, char ***argv, void *info, __u32 *info_len)
{
 int err;
 int fd;

 fd = map_parse_fd(argc, argv);
 if (fd < 0)
  return -1;

 err = bpf_obj_get_info_by_fd(fd, info, info_len);
 if (err) {
  p_err("can't get map info: %s", strerror(errno));
  close(fd);
  return err;
 }

 return fd;
}
