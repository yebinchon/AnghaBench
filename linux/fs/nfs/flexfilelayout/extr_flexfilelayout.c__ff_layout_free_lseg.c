
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_layout_segment {int dummy; } ;


 int ff_layout_free_mirror_array (struct nfs4_ff_layout_segment*) ;
 int kfree (struct nfs4_ff_layout_segment*) ;

__attribute__((used)) static void _ff_layout_free_lseg(struct nfs4_ff_layout_segment *fls)
{
 if (fls) {
  ff_layout_free_mirror_array(fls);
  kfree(fls);
 }
}
