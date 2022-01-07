
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsdfs_client {int cl_ref; } ;
struct inode {struct nfsdfs_client* i_private; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct nfsdfs_client *__get_nfsdfs_client(struct inode *inode)
{
 struct nfsdfs_client *nc = inode->i_private;

 if (nc)
  kref_get(&nc->cl_ref);
 return nc;
}
