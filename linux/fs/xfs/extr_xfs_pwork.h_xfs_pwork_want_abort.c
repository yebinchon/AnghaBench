
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_pwork {int pctl; } ;


 int xfs_pwork_ctl_want_abort (int ) ;

__attribute__((used)) static inline bool
xfs_pwork_want_abort(
 struct xfs_pwork *pwork)
{
 return xfs_pwork_ctl_want_abort(pwork->pctl);
}
