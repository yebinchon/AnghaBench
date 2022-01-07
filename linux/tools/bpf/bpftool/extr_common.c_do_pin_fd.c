
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_obj_pin (int,char const*) ;
 int errno ;
 int mount_bpffs_for_pin (char const*) ;
 int p_err (char*,char const*,int ) ;
 int strerror (int ) ;

int do_pin_fd(int fd, const char *name)
{
 int err;

 err = mount_bpffs_for_pin(name);
 if (err)
  return err;

 err = bpf_obj_pin(fd, name);
 if (err)
  p_err("can't pin the object (%s): %s", name, strerror(errno));

 return err;
}
