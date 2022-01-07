
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_commit_info {int dummy; } ;
struct inode {int dummy; } ;



__attribute__((used)) static inline struct nfs_page *
pnfs_search_commit_reqs(struct inode *inode, struct nfs_commit_info *cinfo,
   struct page *page)
{
 return ((void*)0);
}
