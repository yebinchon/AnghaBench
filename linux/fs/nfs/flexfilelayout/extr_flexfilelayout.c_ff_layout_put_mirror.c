
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_layout_mirror {int ref; } ;


 int ff_layout_free_mirror (struct nfs4_ff_layout_mirror*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void ff_layout_put_mirror(struct nfs4_ff_layout_mirror *mirror)
{
 if (mirror != ((void*)0) && refcount_dec_and_test(&mirror->ref))
  ff_layout_free_mirror(mirror);
}
