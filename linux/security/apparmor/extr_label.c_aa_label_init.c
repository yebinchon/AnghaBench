
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int size; int node; int count; int ** vec; } ;
typedef int gfp_t ;


 int AA_BUG (int) ;
 int RB_CLEAR_NODE (int *) ;
 scalar_t__ aa_alloc_secid (struct aa_label*,int ) ;
 int kref_init (int *) ;

bool aa_label_init(struct aa_label *label, int size, gfp_t gfp)
{
 AA_BUG(!label);
 AA_BUG(size < 1);

 if (aa_alloc_secid(label, gfp) < 0)
  return 0;

 label->size = size;
 label->vec[size] = ((void*)0);
 kref_init(&label->count);
 RB_CLEAR_NODE(&label->node);

 return 1;
}
