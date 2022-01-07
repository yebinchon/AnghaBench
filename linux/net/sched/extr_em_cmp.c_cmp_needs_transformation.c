
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_em_cmp {int flags; } ;


 int TCF_EM_CMP_TRANS ;
 int unlikely (int) ;

__attribute__((used)) static inline int cmp_needs_transformation(struct tcf_em_cmp *cmp)
{
 return unlikely(cmp->flags & TCF_EM_CMP_TRANS);
}
