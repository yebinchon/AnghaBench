
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int nfs4_set_cached_acl (struct inode*,int *) ;

__attribute__((used)) static void nfs4_zap_acl_attr(struct inode *inode)
{
 nfs4_set_cached_acl(inode, ((void*)0));
}
