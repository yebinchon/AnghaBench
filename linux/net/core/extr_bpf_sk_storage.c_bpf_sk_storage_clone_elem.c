
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct bpf_sk_storage_map {int map; } ;
struct bpf_sk_storage_elem {int dummy; } ;
struct TYPE_2__ {int data; } ;


 TYPE_1__* SDATA (struct bpf_sk_storage_elem*) ;
 int copy_map_value (int *,int ,int ) ;
 int copy_map_value_locked (int *,int ,int ,int) ;
 scalar_t__ map_value_has_spin_lock (int *) ;
 struct bpf_sk_storage_elem* selem_alloc (struct bpf_sk_storage_map*,struct sock*,int *,int) ;

__attribute__((used)) static struct bpf_sk_storage_elem *
bpf_sk_storage_clone_elem(struct sock *newsk,
     struct bpf_sk_storage_map *smap,
     struct bpf_sk_storage_elem *selem)
{
 struct bpf_sk_storage_elem *copy_selem;

 copy_selem = selem_alloc(smap, newsk, ((void*)0), 1);
 if (!copy_selem)
  return ((void*)0);

 if (map_value_has_spin_lock(&smap->map))
  copy_map_value_locked(&smap->map, SDATA(copy_selem)->data,
          SDATA(selem)->data, 1);
 else
  copy_map_value(&smap->map, SDATA(copy_selem)->data,
          SDATA(selem)->data);

 return copy_selem;
}
