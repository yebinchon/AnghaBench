
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ceph_x_ticket_handler {TYPE_1__* ticket_blob; int secret_id; } ;
struct TYPE_4__ {char* iov_base; int iov_len; } ;
struct TYPE_3__ {TYPE_2__ vec; } ;


 int ERANGE ;
 int bad ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int ceph_encode_32_safe (void**,void*,int ,int ) ;
 int ceph_encode_64 (void**,int ) ;
 int ceph_encode_8 (void**,int) ;
 int ceph_encode_copy_safe (void**,void*,char const*,int ,int ) ;

__attribute__((used)) static int ceph_x_encode_ticket(struct ceph_x_ticket_handler *th,
    void **p, void *end)
{
 ceph_decode_need(p, end, 1 + sizeof(u64), bad);
 ceph_encode_8(p, 1);
 ceph_encode_64(p, th->secret_id);
 if (th->ticket_blob) {
  const char *buf = th->ticket_blob->vec.iov_base;
  u32 len = th->ticket_blob->vec.iov_len;

  ceph_encode_32_safe(p, end, len, bad);
  ceph_encode_copy_safe(p, end, buf, len, bad);
 } else {
  ceph_encode_32_safe(p, end, 0, bad);
 }

 return 0;
bad:
 return -ERANGE;
}
