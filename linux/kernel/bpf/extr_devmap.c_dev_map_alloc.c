
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bpf_attr {int dummy; } bpf_attr ;
struct bpf_map {int dummy; } ;
struct bpf_dtab {struct bpf_map map; int list; } ;


 int CAP_NET_ADMIN ;
 int ENOMEM ;
 int EPERM ;
 struct bpf_map* ERR_PTR (int) ;
 int GFP_USER ;
 int capable (int ) ;
 int dev_map_init_map (struct bpf_dtab*,union bpf_attr*) ;
 int dev_map_list ;
 int dev_map_lock ;
 int kfree (struct bpf_dtab*) ;
 struct bpf_dtab* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct bpf_map *dev_map_alloc(union bpf_attr *attr)
{
 struct bpf_dtab *dtab;
 int err;

 if (!capable(CAP_NET_ADMIN))
  return ERR_PTR(-EPERM);

 dtab = kzalloc(sizeof(*dtab), GFP_USER);
 if (!dtab)
  return ERR_PTR(-ENOMEM);

 err = dev_map_init_map(dtab, attr);
 if (err) {
  kfree(dtab);
  return ERR_PTR(err);
 }

 spin_lock(&dev_map_lock);
 list_add_tail_rcu(&dtab->list, &dev_map_list);
 spin_unlock(&dev_map_lock);

 return &dtab->map;
}
