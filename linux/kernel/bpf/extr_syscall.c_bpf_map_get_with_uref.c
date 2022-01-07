
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fd {int dummy; } ;
struct bpf_map {int dummy; } ;


 scalar_t__ IS_ERR (struct bpf_map*) ;
 struct bpf_map* __bpf_map_get (struct fd) ;
 struct bpf_map* bpf_map_inc (struct bpf_map*,int) ;
 struct fd fdget (int ) ;
 int fdput (struct fd) ;

struct bpf_map *bpf_map_get_with_uref(u32 ufd)
{
 struct fd f = fdget(ufd);
 struct bpf_map *map;

 map = __bpf_map_get(f);
 if (IS_ERR(map))
  return map;

 map = bpf_map_inc(map, 1);
 fdput(f);

 return map;
}
