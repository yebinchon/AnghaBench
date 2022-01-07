
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_layout_segment {int mirror_array_cnt; int * mirror_array; } ;


 int ff_layout_put_mirror (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void ff_layout_free_mirror_array(struct nfs4_ff_layout_segment *fls)
{
 int i;

 if (fls->mirror_array) {
  for (i = 0; i < fls->mirror_array_cnt; i++) {



   ff_layout_put_mirror(fls->mirror_array[i]);
  }
  kfree(fls->mirror_array);
  fls->mirror_array = ((void*)0);
 }
}
