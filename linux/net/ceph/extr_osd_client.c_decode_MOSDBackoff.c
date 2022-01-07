
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct TYPE_4__ {int shard; int pgid; } ;
struct MOSDBackoff {void* end; void* begin; int id; int op; int map_epoch; TYPE_2__ spgid; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOIO ;
 int ceph_decode_32_safe (void**,void* const,int ,int ) ;
 int ceph_decode_64_safe (void**,void* const,int ,int ) ;
 int ceph_decode_8_safe (void**,void* const,int ,int ) ;
 int ceph_decode_pgid (void**,void* const,int *) ;
 int ceph_start_decoding (void**,void* const,int,char*,int *,int *) ;
 int decode_hoid (void**,void* const,void*) ;
 int e_inval ;
 int free_hoid (void*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int decode_MOSDBackoff(const struct ceph_msg *msg, struct MOSDBackoff *m)
{
 void *p = msg->front.iov_base;
 void *const end = p + msg->front.iov_len;
 u8 struct_v;
 u32 struct_len;
 int ret;

 ret = ceph_start_decoding(&p, end, 1, "spg_t", &struct_v, &struct_len);
 if (ret)
  return ret;

 ret = ceph_decode_pgid(&p, end, &m->spgid.pgid);
 if (ret)
  return ret;

 ceph_decode_8_safe(&p, end, m->spgid.shard, e_inval);
 ceph_decode_32_safe(&p, end, m->map_epoch, e_inval);
 ceph_decode_8_safe(&p, end, m->op, e_inval);
 ceph_decode_64_safe(&p, end, m->id, e_inval);

 m->begin = kzalloc(sizeof(*m->begin), GFP_NOIO);
 if (!m->begin)
  return -ENOMEM;

 ret = decode_hoid(&p, end, m->begin);
 if (ret) {
  free_hoid(m->begin);
  return ret;
 }

 m->end = kzalloc(sizeof(*m->end), GFP_NOIO);
 if (!m->end) {
  free_hoid(m->begin);
  return -ENOMEM;
 }

 ret = decode_hoid(&p, end, m->end);
 if (ret) {
  free_hoid(m->begin);
  free_hoid(m->end);
  return ret;
 }

 return 0;

e_inval:
 return -EINVAL;
}
