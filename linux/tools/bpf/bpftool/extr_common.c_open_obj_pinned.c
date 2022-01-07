
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EACCES ;
 int bpf_obj_get (char*) ;
 int dirname (char*) ;
 scalar_t__ errno ;
 int is_bpffs (int ) ;
 int p_err (char*,char*,char*) ;
 char* strerror (scalar_t__) ;

int open_obj_pinned(char *path, bool quiet)
{
 int fd;

 fd = bpf_obj_get(path);
 if (fd < 0) {
  if (!quiet)
   p_err("bpf obj get (%s): %s", path,
         errno == EACCES && !is_bpffs(dirname(path)) ?
       "directory not in bpf file system (bpffs)" :
       strerror(errno));
  return -1;
 }

 return fd;
}
