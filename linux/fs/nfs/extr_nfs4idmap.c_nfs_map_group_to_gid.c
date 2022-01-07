
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* nfs_client; } ;
struct idmap {int dummy; } ;
typedef int kgid_t ;
typedef int __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;


 int ERANGE ;
 int gid_valid (int ) ;
 int idmap_userns (struct idmap*) ;
 int make_kgid (int ,int) ;
 int nfs_idmap_lookup_id (char const*,size_t,char*,int*,struct idmap*) ;
 int nfs_map_string_to_numeric (char const*,size_t,int*) ;
 int trace_nfs4_map_group_to_gid (char const*,size_t,int,int) ;

int nfs_map_group_to_gid(const struct nfs_server *server, const char *name, size_t namelen, kgid_t *gid)
{
 struct idmap *idmap = server->nfs_client->cl_idmap;
 __u32 id = -1;
 int ret = 0;

 if (!nfs_map_string_to_numeric(name, namelen, &id))
  ret = nfs_idmap_lookup_id(name, namelen, "gid", &id, idmap);
 if (ret == 0) {
  *gid = make_kgid(idmap_userns(idmap), id);
  if (!gid_valid(*gid))
   ret = -ERANGE;
 }
 trace_nfs4_map_group_to_gid(name, namelen, id, ret);
 return ret;
}
