
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_htab_elem {int dummy; } ;
struct bpf_htab {int count; } ;


 int atomic_dec (int *) ;
 int kfree_rcu (struct bpf_htab_elem*,int ) ;
 int rcu ;

__attribute__((used)) static void sock_hash_free_elem(struct bpf_htab *htab,
    struct bpf_htab_elem *elem)
{
 atomic_dec(&htab->count);
 kfree_rcu(elem, rcu);
}
