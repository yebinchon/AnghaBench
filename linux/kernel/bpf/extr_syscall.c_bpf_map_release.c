
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct bpf_map* private_data; } ;
struct bpf_map {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* map_release ) (struct bpf_map*,struct file*) ;} ;


 int bpf_map_put_with_uref (struct bpf_map*) ;
 int stub1 (struct bpf_map*,struct file*) ;

__attribute__((used)) static int bpf_map_release(struct inode *inode, struct file *filp)
{
 struct bpf_map *map = filp->private_data;

 if (map->ops->map_release)
  map->ops->map_release(map, filp);

 bpf_map_put_with_uref(map);
 return 0;
}
