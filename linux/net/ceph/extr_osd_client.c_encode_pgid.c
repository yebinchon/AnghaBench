
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg {int seed; int pool; } ;


 int ceph_encode_32 (void**,int) ;
 int ceph_encode_64 (void**,int ) ;
 int ceph_encode_8 (void**,int) ;

__attribute__((used)) static void encode_pgid(void **p, const struct ceph_pg *pgid)
{
 ceph_encode_8(p, 1);
 ceph_encode_64(p, pgid->pool);
 ceph_encode_32(p, pgid->seed);
 ceph_encode_32(p, -1);
}
