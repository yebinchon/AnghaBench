
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct aghdr_init_data {int buffer_list; int numblks; int daddr; } ;
typedef int (* aghdr_init_work_f ) (struct xfs_mount*,struct xfs_buf*,struct aghdr_init_data*) ;


 int ENOMEM ;
 int stub1 (struct xfs_mount*,struct xfs_buf*,struct aghdr_init_data*) ;
 int xfs_buf_delwri_queue (struct xfs_buf*,int *) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 struct xfs_buf* xfs_get_aghdr_buf (struct xfs_mount*,int ,int ,struct xfs_buf_ops const*) ;

__attribute__((used)) static int
xfs_ag_init_hdr(
 struct xfs_mount *mp,
 struct aghdr_init_data *id,
 aghdr_init_work_f work,
 const struct xfs_buf_ops *ops)

{
 struct xfs_buf *bp;

 bp = xfs_get_aghdr_buf(mp, id->daddr, id->numblks, ops);
 if (!bp)
  return -ENOMEM;

 (*work)(mp, bp, id);

 xfs_buf_delwri_queue(bp, &id->buffer_list);
 xfs_buf_relse(bp);
 return 0;
}
