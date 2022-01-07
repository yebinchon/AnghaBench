
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_map {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* map_fd_sys_lookup_elem ) (void*) ;} ;


 int ENOENT ;
 int ENOTSUPP ;
 void* READ_ONCE (void*) ;
 void** array_map_lookup_elem (struct bpf_map*,void*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (void*) ;

int bpf_fd_array_map_lookup_elem(struct bpf_map *map, void *key, u32 *value)
{
 void **elem, *ptr;
 int ret = 0;

 if (!map->ops->map_fd_sys_lookup_elem)
  return -ENOTSUPP;

 rcu_read_lock();
 elem = array_map_lookup_elem(map, key);
 if (elem && (ptr = READ_ONCE(*elem)))
  *value = map->ops->map_fd_sys_lookup_elem(ptr);
 else
  ret = -ENOENT;
 rcu_read_unlock();

 return ret;
}
