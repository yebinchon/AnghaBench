
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_perag {int dummy; } ;


 int xfs_ag_has_sickness (struct xfs_perag*,unsigned int) ;

__attribute__((used)) static inline bool
xfs_ag_is_healthy(struct xfs_perag *pag)
{
 return !xfs_ag_has_sickness(pag, -1U);
}
