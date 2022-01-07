
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int id_str ;
typedef int __u32 ;


 scalar_t__ EINVAL ;
 int NFS_UINT_MAXLEN ;
 scalar_t__ nfs_idmap_get_key (char*,int,char const*,char*,size_t,struct idmap*) ;
 int nfs_map_numeric_to_string (int ,char*,int) ;

__attribute__((used)) static ssize_t nfs_idmap_lookup_name(__u32 id, const char *type, char *buf,
         size_t buflen, struct idmap *idmap)
{
 char id_str[NFS_UINT_MAXLEN];
 int id_len;
 ssize_t ret;

 id_len = nfs_map_numeric_to_string(id, id_str, sizeof(id_str));
 ret = nfs_idmap_get_key(id_str, id_len, type, buf, buflen, idmap);
 if (ret < 0)
  return -EINVAL;
 return ret;
}
