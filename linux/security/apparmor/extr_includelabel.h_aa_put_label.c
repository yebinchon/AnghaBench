
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int count; } ;


 int aa_label_kref ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void aa_put_label(struct aa_label *l)
{
 if (l)
  kref_put(&l->count, aa_label_kref);
}
