
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int caps; TYPE_1__* nfs_client; } ;
struct idmap {int dummy; } ;
typedef int kuid_t ;
typedef int __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;


 int EINVAL ;
 int NFS_CAP_UIDGID_NOMAP ;
 int from_kuid_munged (int ,int ) ;
 int idmap_userns (struct idmap*) ;
 int nfs_idmap_lookup_name (int ,char*,char*,size_t,struct idmap*) ;
 int nfs_map_numeric_to_string (int ,char*,size_t) ;
 int trace_nfs4_map_uid_to_name (char*,int,int ,int) ;

int nfs_map_uid_to_name(const struct nfs_server *server, kuid_t uid, char *buf, size_t buflen)
{
 struct idmap *idmap = server->nfs_client->cl_idmap;
 int ret = -EINVAL;
 __u32 id;

 id = from_kuid_munged(idmap_userns(idmap), uid);
 if (!(server->caps & NFS_CAP_UIDGID_NOMAP))
  ret = nfs_idmap_lookup_name(id, "user", buf, buflen, idmap);
 if (ret < 0)
  ret = nfs_map_numeric_to_string(id, buf, buflen);
 trace_nfs4_map_uid_to_name(buf, ret, id, ret);
 return ret;
}
