
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_obj_type { ____Placeholder_bpf_obj_type } bpf_obj_type ;


 int close (int) ;
 int get_fd_type (int) ;
 int get_fd_type_name (int) ;
 int open_obj_pinned (char*,int) ;
 int p_err (char*,int ) ;

int open_obj_pinned_any(char *path, enum bpf_obj_type exp_type)
{
 enum bpf_obj_type type;
 int fd;

 fd = open_obj_pinned(path, 0);
 if (fd < 0)
  return -1;

 type = get_fd_type(fd);
 if (type < 0) {
  close(fd);
  return type;
 }
 if (type != exp_type) {
  p_err("incorrect object type: %s", get_fd_type_name(type));
  close(fd);
  return -1;
 }

 return fd;
}
