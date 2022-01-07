
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct bpf_htab_elem {int hash; struct sock* sk; int key; } ;
struct TYPE_2__ {scalar_t__ max_entries; int numa_node; } ;
struct bpf_htab {int count; TYPE_1__ map; int elem_size; } ;


 int E2BIG ;
 int ENOMEM ;
 struct bpf_htab_elem* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int __GFP_NOWARN ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 struct bpf_htab_elem* kmalloc_node (int ,int,int ) ;
 int memcpy (int ,void*,int ) ;

__attribute__((used)) static struct bpf_htab_elem *sock_hash_alloc_elem(struct bpf_htab *htab,
        void *key, u32 key_size,
        u32 hash, struct sock *sk,
        struct bpf_htab_elem *old)
{
 struct bpf_htab_elem *new;

 if (atomic_inc_return(&htab->count) > htab->map.max_entries) {
  if (!old) {
   atomic_dec(&htab->count);
   return ERR_PTR(-E2BIG);
  }
 }

 new = kmalloc_node(htab->elem_size, GFP_ATOMIC | __GFP_NOWARN,
      htab->map.numa_node);
 if (!new) {
  atomic_dec(&htab->count);
  return ERR_PTR(-ENOMEM);
 }
 memcpy(new->key, key, key_size);
 new->sk = sk;
 new->hash = hash;
 return new;
}
