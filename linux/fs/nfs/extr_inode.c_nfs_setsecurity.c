
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;



void nfs_setsecurity(struct inode *inode, struct nfs_fattr *fattr,
     struct nfs4_label *label)
{
}
