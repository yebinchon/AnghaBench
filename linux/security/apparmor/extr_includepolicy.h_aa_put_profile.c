
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct aa_profile {TYPE_1__ label; } ;


 int aa_label_kref ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void aa_put_profile(struct aa_profile *p)
{
 if (p)
  kref_put(&p->label.count, aa_label_kref);
}
