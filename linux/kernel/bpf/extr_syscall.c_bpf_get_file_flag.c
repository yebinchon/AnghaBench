
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_F_RDONLY ;
 int BPF_F_WRONLY ;
 int EINVAL ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;

int bpf_get_file_flag(int flags)
{
 if ((flags & BPF_F_RDONLY) && (flags & BPF_F_WRONLY))
  return -EINVAL;
 if (flags & BPF_F_RDONLY)
  return O_RDONLY;
 if (flags & BPF_F_WRONLY)
  return O_WRONLY;
 return O_RDWR;
}
