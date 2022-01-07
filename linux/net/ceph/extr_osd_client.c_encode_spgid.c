
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_spg {int shard; int pgid; } ;


 scalar_t__ CEPH_PGID_ENCODING_LEN ;
 int ceph_encode_8 (void**,int ) ;
 int ceph_start_encoding (void**,int,int,scalar_t__) ;
 int encode_pgid (void**,int *) ;

__attribute__((used)) static void encode_spgid(void **p, const struct ceph_spg *spgid)
{
 ceph_start_encoding(p, 1, 1, CEPH_PGID_ENCODING_LEN + 1);
 encode_pgid(p, &spgid->pgid);
 ceph_encode_8(p, spgid->shard);
}
