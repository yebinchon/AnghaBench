
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int dummy; } ;


 int xfs_ag_measure_sickness (struct xfs_perag*,unsigned int*,unsigned int*) ;

__attribute__((used)) static inline bool
xfs_ag_has_sickness(struct xfs_perag *pag, unsigned int mask)
{
 unsigned int sick, checked;

 xfs_ag_measure_sickness(pag, &sick, &checked);
 return sick & mask;
}
