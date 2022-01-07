
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* nfs_client; } ;
struct idmap {int dummy; } ;
typedef int kuid_t ;
typedef int __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;


 int ERANGE ;
 int idmap_userns (struct idmap*) ;
 int make_kuid (int ,int) ;
 int nfs_idmap_lookup_id (char const*,size_t,char*,int*,struct idmap*) ;
 int nfs_map_string_to_numeric (char const*,size_t,int*) ;
 int trace_nfs4_map_name_to_uid (char const*,size_t,int,int) ;
 int uid_valid (int ) ;

int nfs_map_name_to_uid(const struct nfs_server *server, const char *name, size_t namelen, kuid_t *uid)
{
 struct idmap *idmap = server->nfs_client->cl_idmap;
 __u32 id = -1;
 int ret = 0;

 if (!nfs_map_string_to_numeric(name, namelen, &id))
  ret = nfs_idmap_lookup_id(name, namelen, "uid", &id, idmap);
 if (ret == 0) {
  *uid = make_kuid(idmap_userns(idmap), id);
  if (!uid_valid(*uid))
   ret = -ERANGE;
 }
 trace_nfs4_map_name_to_uid(name, namelen, id, ret);
 return ret;
}
