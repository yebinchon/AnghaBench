
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ag_resv {int dummy; } ;
struct xfs_perag {struct xfs_ag_resv pag_rmapbt_resv; struct xfs_ag_resv pag_meta_resv; } ;
typedef enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;





__attribute__((used)) static inline struct xfs_ag_resv *
xfs_perag_resv(
 struct xfs_perag *pag,
 enum xfs_ag_resv_type type)
{
 switch (type) {
 case 129:
  return &pag->pag_meta_resv;
 case 128:
  return &pag->pag_rmapbt_resv;
 default:
  return ((void*)0);
 }
}
