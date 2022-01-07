
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 int OPEN_FMODE (int) ;
 int O_CLOEXEC ;
 int anon_inode_getfd (char*,int *,struct bpf_map*,int) ;
 int bpf_map_fops ;
 int security_bpf_map (struct bpf_map*,int ) ;

int bpf_map_new_fd(struct bpf_map *map, int flags)
{
 int ret;

 ret = security_bpf_map(map, OPEN_FMODE(flags));
 if (ret < 0)
  return ret;

 return anon_inode_getfd("bpf-map", &bpf_map_fops, map,
    flags | O_CLOEXEC);
}
