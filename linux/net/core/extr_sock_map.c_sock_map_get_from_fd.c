
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int attach_type; int target_fd; } ;
typedef int u32 ;
struct fd {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct bpf_map {int dummy; } ;


 scalar_t__ IS_ERR (struct bpf_map*) ;
 int PTR_ERR (struct bpf_map*) ;
 struct bpf_map* __bpf_map_get (struct fd) ;
 struct fd fdget (int ) ;
 int fdput (struct fd) ;
 int sock_map_prog_update (struct bpf_map*,struct bpf_prog*,int ) ;

int sock_map_get_from_fd(const union bpf_attr *attr, struct bpf_prog *prog)
{
 u32 ufd = attr->target_fd;
 struct bpf_map *map;
 struct fd f;
 int ret;

 f = fdget(ufd);
 map = __bpf_map_get(f);
 if (IS_ERR(map))
  return PTR_ERR(map);
 ret = sock_map_prog_update(map, prog, attr->attach_type);
 fdput(f);
 return ret;
}
