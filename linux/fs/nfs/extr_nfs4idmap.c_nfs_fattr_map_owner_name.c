
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_fattr {int valid; int uid; struct nfs4_string* owner_name; } ;
struct nfs4_string {int len; int data; } ;
typedef int kuid_t ;


 int NFS_ATTR_FATTR_OWNER ;
 int NFS_ATTR_FATTR_OWNER_NAME ;
 scalar_t__ nfs_map_name_to_uid (struct nfs_server*,int ,int ,int *) ;

__attribute__((used)) static bool nfs_fattr_map_owner_name(struct nfs_server *server, struct nfs_fattr *fattr)
{
 struct nfs4_string *owner = fattr->owner_name;
 kuid_t uid;

 if (!(fattr->valid & NFS_ATTR_FATTR_OWNER_NAME))
  return 0;
 if (nfs_map_name_to_uid(server, owner->data, owner->len, &uid) == 0) {
  fattr->uid = uid;
  fattr->valid |= NFS_ATTR_FATTR_OWNER;
 }
 return 1;
}
