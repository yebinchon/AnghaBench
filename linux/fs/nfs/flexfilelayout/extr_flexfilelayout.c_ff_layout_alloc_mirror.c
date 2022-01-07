
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_layout_mirror {int mirrors; int ref; int lock; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct nfs4_ff_layout_mirror* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct nfs4_ff_layout_mirror *ff_layout_alloc_mirror(gfp_t gfp_flags)
{
 struct nfs4_ff_layout_mirror *mirror;

 mirror = kzalloc(sizeof(*mirror), gfp_flags);
 if (mirror != ((void*)0)) {
  spin_lock_init(&mirror->lock);
  refcount_set(&mirror->ref, 1);
  INIT_LIST_HEAD(&mirror->mirrors);
 }
 return mirror;
}
