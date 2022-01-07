
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_info {int dummy; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;


 int PNFS_NOT_ATTEMPTED ;

__attribute__((used)) static inline int
pnfs_commit_list(struct inode *inode, struct list_head *mds_pages, int how,
   struct nfs_commit_info *cinfo)
{
 return PNFS_NOT_ATTEMPTED;
}
