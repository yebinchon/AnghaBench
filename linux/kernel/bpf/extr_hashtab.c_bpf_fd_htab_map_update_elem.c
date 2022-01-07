
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct file {int dummy; } ;
struct bpf_map {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* map_fd_put_ptr ) (void*) ;void* (* map_fd_get_ptr ) (struct bpf_map*,struct file*,int ) ;} ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int htab_map_update_elem (struct bpf_map*,void*,void**,int ) ;
 void* stub1 (struct bpf_map*,struct file*,int ) ;
 int stub2 (void*) ;

int bpf_fd_htab_map_update_elem(struct bpf_map *map, struct file *map_file,
    void *key, void *value, u64 map_flags)
{
 void *ptr;
 int ret;
 u32 ufd = *(u32 *)value;

 ptr = map->ops->map_fd_get_ptr(map, map_file, ufd);
 if (IS_ERR(ptr))
  return PTR_ERR(ptr);

 ret = htab_map_update_elem(map, key, &ptr, map_flags);
 if (ret)
  map->ops->map_fd_put_ptr(ptr);

 return ret;
}
