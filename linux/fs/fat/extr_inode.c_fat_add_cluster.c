
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int fat_alloc_clusters (struct inode*,int*,int) ;
 int fat_chain_add (struct inode*,int,int) ;
 int fat_free_clusters (struct inode*,int) ;

int fat_add_cluster(struct inode *inode)
{
 int err, cluster;

 err = fat_alloc_clusters(inode, &cluster, 1);
 if (err)
  return err;


 err = fat_chain_add(inode, cluster, 1);
 if (err)
  fat_free_clusters(inode, cluster);
 return err;
}
