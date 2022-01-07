
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_labelset {int dummy; } ;
struct aa_ns {struct aa_labelset labels; } ;
struct aa_label {int dummy; } ;


 struct aa_ns* labels_ns (struct aa_label*) ;
 scalar_t__ ns_cmp (struct aa_ns*,struct aa_ns*) ;

__attribute__((used)) static struct aa_labelset *labelset_of_merge(struct aa_label *a,
          struct aa_label *b)
{
 struct aa_ns *nsa = labels_ns(a);
 struct aa_ns *nsb = labels_ns(b);

 if (ns_cmp(nsa, nsb) <= 0)
  return &nsa->labels;
 return &nsb->labels;
}
