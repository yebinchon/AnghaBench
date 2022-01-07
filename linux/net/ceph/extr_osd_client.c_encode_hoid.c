
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_hobject_id {int pool; int nspace_len; int nspace; int is_max; int hash; int snapid; int oid_len; int oid; int key_len; int key; } ;


 int ceph_encode_32 (void**,int ) ;
 int ceph_encode_64 (void**,int ) ;
 int ceph_encode_8 (void**,int ) ;
 int ceph_encode_string (void**,void*,int ,int ) ;
 int ceph_start_encoding (void**,int,int,int ) ;
 int hoid_encoding_size (struct ceph_hobject_id const*) ;

__attribute__((used)) static void encode_hoid(void **p, void *end, const struct ceph_hobject_id *hoid)
{
 ceph_start_encoding(p, 4, 3, hoid_encoding_size(hoid));
 ceph_encode_string(p, end, hoid->key, hoid->key_len);
 ceph_encode_string(p, end, hoid->oid, hoid->oid_len);
 ceph_encode_64(p, hoid->snapid);
 ceph_encode_32(p, hoid->hash);
 ceph_encode_8(p, hoid->is_max);
 ceph_encode_string(p, end, hoid->nspace, hoid->nspace_len);
 ceph_encode_64(p, hoid->pool);
}
