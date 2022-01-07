
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct dir_context {int dummy; } ;


 int inode_query_iversion (struct inode*) ;
 int ocfs2_dir_foreach_blk (struct inode*,int *,struct dir_context*,int) ;

int ocfs2_dir_foreach(struct inode *inode, struct dir_context *ctx)
{
 u64 version = inode_query_iversion(inode);
 ocfs2_dir_foreach_blk(inode, &version, ctx, 1);
 return 0;
}
