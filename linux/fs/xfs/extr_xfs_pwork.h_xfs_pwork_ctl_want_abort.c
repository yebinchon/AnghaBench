
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_pwork_ctl {scalar_t__ error; } ;



__attribute__((used)) static inline bool
xfs_pwork_ctl_want_abort(
 struct xfs_pwork_ctl *pctl)
{
 return pctl && pctl->error;
}
