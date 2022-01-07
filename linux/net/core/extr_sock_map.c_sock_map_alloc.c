
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {scalar_t__ max_entries; int key_size; int value_size; int map_flags; } ;
typedef int u64 ;
struct sock {int dummy; } ;
struct bpf_map {int max_entries; int memory; int numa_node; } ;
struct bpf_stab {struct bpf_map map; scalar_t__ sks; int lock; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 struct bpf_map* ERR_PTR (int) ;
 int GFP_USER ;
 int SOCK_CREATE_FLAG_MASK ;
 scalar_t__ bpf_map_area_alloc (int,int ) ;
 int bpf_map_charge_finish (int *) ;
 int bpf_map_charge_init (int *,int) ;
 int bpf_map_init_from_attr (struct bpf_map*,union bpf_attr*) ;
 int capable (int ) ;
 int kfree (struct bpf_stab*) ;
 struct bpf_stab* kzalloc (int,int ) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static struct bpf_map *sock_map_alloc(union bpf_attr *attr)
{
 struct bpf_stab *stab;
 u64 cost;
 int err;

 if (!capable(CAP_NET_ADMIN))
  return ERR_PTR(-EPERM);
 if (attr->max_entries == 0 ||
     attr->key_size != 4 ||
     attr->value_size != 4 ||
     attr->map_flags & ~SOCK_CREATE_FLAG_MASK)
  return ERR_PTR(-EINVAL);

 stab = kzalloc(sizeof(*stab), GFP_USER);
 if (!stab)
  return ERR_PTR(-ENOMEM);

 bpf_map_init_from_attr(&stab->map, attr);
 raw_spin_lock_init(&stab->lock);


 cost = (u64) stab->map.max_entries * sizeof(struct sock *);
 err = bpf_map_charge_init(&stab->map.memory, cost);
 if (err)
  goto free_stab;

 stab->sks = bpf_map_area_alloc(stab->map.max_entries *
           sizeof(struct sock *),
           stab->map.numa_node);
 if (stab->sks)
  return &stab->map;
 err = -ENOMEM;
 bpf_map_charge_finish(&stab->map.memory);
free_stab:
 kfree(stab);
 return ERR_PTR(err);
}
