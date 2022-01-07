
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int t_flags; int t_dfops; } ;


 int ASSERT (int ) ;
 int XFS_TRANS_LOWMODE ;
 int list_empty (int *) ;

__attribute__((used)) static void
xfs_defer_reset(
 struct xfs_trans *tp)
{
 ASSERT(list_empty(&tp->t_dfops));





 tp->t_flags &= ~XFS_TRANS_LOWMODE;
}
