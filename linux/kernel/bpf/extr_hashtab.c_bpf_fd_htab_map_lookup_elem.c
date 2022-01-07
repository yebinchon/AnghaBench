
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_map {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* map_fd_sys_lookup_elem ) (int ) ;} ;


 int ENOENT ;
 int ENOTSUPP ;
 int READ_ONCE (void*) ;
 void** htab_map_lookup_elem (struct bpf_map*,void*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int ) ;

int bpf_fd_htab_map_lookup_elem(struct bpf_map *map, void *key, u32 *value)
{
 void **ptr;
 int ret = 0;

 if (!map->ops->map_fd_sys_lookup_elem)
  return -ENOTSUPP;

 rcu_read_lock();
 ptr = htab_map_lookup_elem(map, key);
 if (ptr)
  *value = map->ops->map_fd_sys_lookup_elem(READ_ONCE(*ptr));
 else
  ret = -ENOENT;
 rcu_read_unlock();

 return ret;
}
