
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_omem_alloc; } ;
struct TYPE_3__ {int value_size; } ;
struct bpf_sk_storage_map {int elem_size; TYPE_1__ map; } ;
struct bpf_sk_storage_elem {int dummy; } ;
struct TYPE_4__ {int data; } ;


 int GFP_ATOMIC ;
 TYPE_2__* SDATA (struct bpf_sk_storage_elem*) ;
 int __GFP_NOWARN ;
 int atomic_sub (int ,int *) ;
 struct bpf_sk_storage_elem* kzalloc (int ,int) ;
 int memcpy (int ,void*,int ) ;
 scalar_t__ omem_charge (struct sock*,int ) ;

__attribute__((used)) static struct bpf_sk_storage_elem *selem_alloc(struct bpf_sk_storage_map *smap,
            struct sock *sk, void *value,
            bool charge_omem)
{
 struct bpf_sk_storage_elem *selem;

 if (charge_omem && omem_charge(sk, smap->elem_size))
  return ((void*)0);

 selem = kzalloc(smap->elem_size, GFP_ATOMIC | __GFP_NOWARN);
 if (selem) {
  if (value)
   memcpy(SDATA(selem)->data, value, smap->map.value_size);
  return selem;
 }

 if (charge_omem)
  atomic_sub(smap->elem_size, &sk->sk_omem_alloc);

 return ((void*)0);
}
