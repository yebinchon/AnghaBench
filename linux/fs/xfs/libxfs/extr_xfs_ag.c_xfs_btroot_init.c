
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct aghdr_init_data {int agno; int type; } ;


 int xfs_btree_init_block (struct xfs_mount*,struct xfs_buf*,int ,int ,int ,int ) ;

__attribute__((used)) static void
xfs_btroot_init(
 struct xfs_mount *mp,
 struct xfs_buf *bp,
 struct aghdr_init_data *id)
{
 xfs_btree_init_block(mp, bp, id->type, 0, 0, id->agno);
}
