
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sk_storage_elem {int snode; int sk_storage; } ;
struct bpf_sk_storage {int list; } ;


 int RCU_INIT_POINTER (int ,struct bpf_sk_storage*) ;
 int hlist_add_head (int *,int *) ;

__attribute__((used)) static void __selem_link_sk(struct bpf_sk_storage *sk_storage,
       struct bpf_sk_storage_elem *selem)
{
 RCU_INIT_POINTER(selem->sk_storage, sk_storage);
 hlist_add_head(&selem->snode, &sk_storage->list);
}
