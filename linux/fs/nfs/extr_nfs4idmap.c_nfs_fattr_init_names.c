
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {struct nfs4_string* group_name; struct nfs4_string* owner_name; } ;
struct nfs4_string {int dummy; } ;



void nfs_fattr_init_names(struct nfs_fattr *fattr,
  struct nfs4_string *owner_name,
  struct nfs4_string *group_name)
{
 fattr->owner_name = owner_name;
 fattr->group_name = group_name;
}
