
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int NFS_SERVER (int ) ;
 int d_inode (struct dentry*) ;
 int nfs4_server_supports_acls (int ) ;

__attribute__((used)) static bool nfs4_xattr_list_nfs4_acl(struct dentry *dentry)
{
 return nfs4_server_supports_acls(NFS_SERVER(d_inode(dentry)));
}
