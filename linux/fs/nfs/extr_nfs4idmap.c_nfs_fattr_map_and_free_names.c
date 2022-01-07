
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_fattr {int dummy; } ;


 int nfs_fattr_free_group_name (struct nfs_fattr*) ;
 int nfs_fattr_free_owner_name (struct nfs_fattr*) ;
 scalar_t__ nfs_fattr_map_group_name (struct nfs_server*,struct nfs_fattr*) ;
 scalar_t__ nfs_fattr_map_owner_name (struct nfs_server*,struct nfs_fattr*) ;

void nfs_fattr_map_and_free_names(struct nfs_server *server, struct nfs_fattr *fattr)
{
 if (nfs_fattr_map_owner_name(server, fattr))
  nfs_fattr_free_owner_name(fattr);
 if (nfs_fattr_map_group_name(server, fattr))
  nfs_fattr_free_group_name(fattr);
}
