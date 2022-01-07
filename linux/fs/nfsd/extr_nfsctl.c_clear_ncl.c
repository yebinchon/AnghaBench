
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsdfs_client {int cl_release; int cl_ref; } ;
struct inode {struct nfsdfs_client* i_private; } ;


 int kref_put (int *,int ) ;

__attribute__((used)) static void clear_ncl(struct inode *inode)
{
 struct nfsdfs_client *ncl = inode->i_private;

 inode->i_private = ((void*)0);
 kref_put(&ncl->cl_ref, ncl->cl_release);
}
