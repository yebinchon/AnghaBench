
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {scalar_t__ attrtimeo; scalar_t__ read_cache_jiffies; } ;
struct inode {int dummy; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int jiffies ;
 int time_in_range_open (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int nfs_attribute_timeout(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);

 return !time_in_range_open(jiffies, nfsi->read_cache_jiffies, nfsi->read_cache_jiffies + nfsi->attrtimeo);
}
