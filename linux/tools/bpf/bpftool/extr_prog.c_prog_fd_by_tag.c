
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_info {int tag; } ;
typedef int info ;
typedef int __u32 ;


 int BPF_TAG_SIZE ;
 int bpf_obj_get_info_by_fd (int,struct bpf_prog_info*,int*) ;
 int bpf_prog_get_fd_by_id (unsigned int) ;
 int bpf_prog_get_next_id (unsigned int,unsigned int*) ;
 int close (int) ;
 int errno ;
 int memcmp (unsigned char*,int ,int ) ;
 int p_err (char*,unsigned int,...) ;
 int strerror (int ) ;

__attribute__((used)) static int prog_fd_by_tag(unsigned char *tag)
{
 unsigned int id = 0;
 int err;
 int fd;

 while (1) {
  struct bpf_prog_info info = {};
  __u32 len = sizeof(info);

  err = bpf_prog_get_next_id(id, &id);
  if (err) {
   p_err("%s", strerror(errno));
   return -1;
  }

  fd = bpf_prog_get_fd_by_id(id);
  if (fd < 0) {
   p_err("can't get prog by id (%u): %s",
         id, strerror(errno));
   return -1;
  }

  err = bpf_obj_get_info_by_fd(fd, &info, &len);
  if (err) {
   p_err("can't get prog info (%u): %s",
         id, strerror(errno));
   close(fd);
   return -1;
  }

  if (!memcmp(tag, info.tag, BPF_TAG_SIZE))
   return fd;

  close(fd);
 }
}
