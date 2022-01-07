
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CEPH_ENTITY_TYPE_CLIENT ;
 int ERANGE ;
 int ceph_encode_32 (void**,int) ;
 int ceph_encode_copy (void**,char const*,int) ;
 int strlen (char const*) ;

int ceph_auth_entity_name_encode(const char *name, void **p, void *end)
{
 int len = strlen(name);

 if (*p + 2*sizeof(u32) + len > end)
  return -ERANGE;
 ceph_encode_32(p, CEPH_ENTITY_TYPE_CLIENT);
 ceph_encode_32(p, len);
 ceph_encode_copy(p, name, len);
 return 0;
}
