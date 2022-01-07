
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ifork {int if_seq; } ;


 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (int ,scalar_t__) ;

__attribute__((used)) static inline void xfs_iext_inc_seq(struct xfs_ifork *ifp)
{
 WRITE_ONCE(ifp->if_seq, READ_ONCE(ifp->if_seq) + 1);
}
