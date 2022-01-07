
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ceph_pg_pool_info {int size; int min_size; int read_tier; int write_tier; void* last_force_request_resend; void* flags; void* pgp_num; void* pg_num; void* object_hash; void* crush_ruleset; void* type; } ;


 int EINVAL ;
 int bad ;
 int calc_pg_masks (struct ceph_pg_pool_info*) ;
 void* ceph_decode_32 (void**) ;
 void* ceph_decode_64 (void**) ;
 void* ceph_decode_8 (void**) ;
 int ceph_decode_need (void**,void*,unsigned int,int ) ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static int decode_pool(void **p, void *end, struct ceph_pg_pool_info *pi)
{
 u8 ev, cv;
 unsigned len, num;
 void *pool_end;

 ceph_decode_need(p, end, 2 + 4, bad);
 ev = ceph_decode_8(p);
 cv = ceph_decode_8(p);
 if (ev < 5) {
  pr_warn("got v %d < 5 cv %d of ceph_pg_pool\n", ev, cv);
  return -EINVAL;
 }
 if (cv > 9) {
  pr_warn("got v %d cv %d > 9 of ceph_pg_pool\n", ev, cv);
  return -EINVAL;
 }
 len = ceph_decode_32(p);
 ceph_decode_need(p, end, len, bad);
 pool_end = *p + len;

 pi->type = ceph_decode_8(p);
 pi->size = ceph_decode_8(p);
 pi->crush_ruleset = ceph_decode_8(p);
 pi->object_hash = ceph_decode_8(p);

 pi->pg_num = ceph_decode_32(p);
 pi->pgp_num = ceph_decode_32(p);

 *p += 4 + 4;
 *p += 4;
 *p += 8 + 4;


 num = ceph_decode_32(p);
 while (num--) {
  *p += 8;
  *p += 1 + 1;
  len = ceph_decode_32(p);
  *p += len;
 }


 num = ceph_decode_32(p);
 *p += num * (8 + 8);

 *p += 8;
 pi->flags = ceph_decode_64(p);
 *p += 4;

 if (ev >= 7)
  pi->min_size = ceph_decode_8(p);
 else
  pi->min_size = pi->size - pi->size / 2;

 if (ev >= 8)
  *p += 8 + 8;

 if (ev >= 9) {

  num = ceph_decode_32(p);
  *p += num * 8;

  *p += 8;
  *p += 1;

  pi->read_tier = ceph_decode_64(p);
  pi->write_tier = ceph_decode_64(p);
 } else {
  pi->read_tier = -1;
  pi->write_tier = -1;
 }

 if (ev >= 10) {

  num = ceph_decode_32(p);
  while (num--) {
   len = ceph_decode_32(p);
   *p += len;
   len = ceph_decode_32(p);
   *p += len;
  }
 }

 if (ev >= 11) {

  *p += 1 + 1;
  len = ceph_decode_32(p);
  *p += len;

  *p += 4;
  *p += 4;
 }

 if (ev >= 12)
  *p += 4;

 if (ev >= 13) {
  *p += 8;
  *p += 8;
  *p += 4;
  *p += 4;
  *p += 4;
  *p += 4;
 }

 if (ev >= 14) {

  len = ceph_decode_32(p);
  *p += len;
 }





 if (ev >= 15)
  pi->last_force_request_resend = ceph_decode_32(p);
 else
  pi->last_force_request_resend = 0;

 if (ev >= 16)
  *p += 4;

 if (ev >= 17)
  *p += 8;

 if (ev >= 19)
  *p += 4;

 if (ev >= 20)
  *p += 4;

 if (ev >= 21)
  *p += 1;

 if (ev >= 22)
  *p += 1;

 if (ev >= 23) {
  *p += 4;
  *p += 4;
 }

 if (ev >= 24) {

  *p += 1 + 1;
  len = ceph_decode_32(p);
  *p += len;
 }

 if (ev >= 25)
  pi->last_force_request_resend = ceph_decode_32(p);



 *p = pool_end;
 calc_pg_masks(pi);
 return 0;

bad:
 return -EINVAL;
}
