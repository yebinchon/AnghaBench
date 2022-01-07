
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int count; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct aa_label *aa_get_label(struct aa_label *l)
{
 if (l)
  kref_get(&(l->count));

 return l;
}
