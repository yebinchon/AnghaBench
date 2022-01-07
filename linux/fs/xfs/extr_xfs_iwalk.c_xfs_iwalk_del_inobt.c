
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;


 int xfs_btree_del_cursor (struct xfs_btree_cur*,int) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

__attribute__((used)) static inline void
xfs_iwalk_del_inobt(
 struct xfs_trans *tp,
 struct xfs_btree_cur **curpp,
 struct xfs_buf **agi_bpp,
 int error)
{
 if (*curpp) {
  xfs_btree_del_cursor(*curpp, error);
  *curpp = ((void*)0);
 }
 if (*agi_bpp) {
  xfs_trans_brelse(tp, *agi_bpp);
  *agi_bpp = ((void*)0);
 }
}
