
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {scalar_t__ size; } ;


 int GFP_NOFS ;
 struct nfs_fh* kmalloc (int,int ) ;

struct nfs_fh *nfs_alloc_fhandle(void)
{
 struct nfs_fh *fh;

 fh = kmalloc(sizeof(struct nfs_fh), GFP_NOFS);
 if (fh != ((void*)0))
  fh->size = 0;
 return fh;
}
