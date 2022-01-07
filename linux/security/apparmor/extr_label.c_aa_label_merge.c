
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {scalar_t__ size; } ;
typedef int gfp_t ;


 int AA_BUG (int) ;
 struct aa_label* aa_get_newest_label (struct aa_label*) ;
 struct aa_label* aa_label_alloc (scalar_t__,int *,int ) ;
 int aa_put_label (struct aa_label*) ;
 int label_free_or_put_new (struct aa_label*,struct aa_label*) ;
 struct aa_label* label_merge_insert (struct aa_label*,struct aa_label*,struct aa_label*) ;

struct aa_label *aa_label_merge(struct aa_label *a, struct aa_label *b,
    gfp_t gfp)
{
 struct aa_label *label = ((void*)0);

 AA_BUG(!a);
 AA_BUG(!b);

 if (a == b)
  return aa_get_newest_label(a);







 if (!label) {
  struct aa_label *new;

  a = aa_get_newest_label(a);
  b = aa_get_newest_label(b);




  new = aa_label_alloc(a->size + b->size, ((void*)0), gfp);
  if (!new)
   goto out;

  label = label_merge_insert(new, a, b);
  label_free_or_put_new(label, new);
out:
  aa_put_label(a);
  aa_put_label(b);
 }

 return label;
}
