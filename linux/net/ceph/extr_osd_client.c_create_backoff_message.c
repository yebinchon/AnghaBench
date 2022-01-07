
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ceph_osd_backoff {int end; int begin; int id; int spgid; } ;
struct TYPE_4__ {void* iov_base; int iov_len; } ;
struct TYPE_3__ {int front_len; int version; } ;
struct ceph_msg {int front_alloc_len; TYPE_2__ front; TYPE_1__ hdr; } ;


 int BUG_ON (int) ;
 int CEPH_ENCODING_START_BLK_LEN ;
 int CEPH_MSG_OSD_BACKOFF ;
 int CEPH_OSD_BACKOFF_OP_ACK_BLOCK ;
 int CEPH_PGID_ENCODING_LEN ;
 int GFP_NOIO ;
 int ceph_encode_32 (void**,int ) ;
 int ceph_encode_64 (void**,int ) ;
 int ceph_encode_8 (void**,int ) ;
 struct ceph_msg* ceph_msg_new (int ,int,int ,int) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int encode_hoid (void**,void*,int ) ;
 int encode_spgid (void**,int *) ;
 scalar_t__ hoid_encoding_size (int ) ;

__attribute__((used)) static struct ceph_msg *create_backoff_message(
    const struct ceph_osd_backoff *backoff,
    u32 map_epoch)
{
 struct ceph_msg *msg;
 void *p, *end;
 int msg_size;

 msg_size = CEPH_ENCODING_START_BLK_LEN +
   CEPH_PGID_ENCODING_LEN + 1;
 msg_size += 4 + 1 + 8;
 msg_size += CEPH_ENCODING_START_BLK_LEN +
   hoid_encoding_size(backoff->begin);
 msg_size += CEPH_ENCODING_START_BLK_LEN +
   hoid_encoding_size(backoff->end);

 msg = ceph_msg_new(CEPH_MSG_OSD_BACKOFF, msg_size, GFP_NOIO, 1);
 if (!msg)
  return ((void*)0);

 p = msg->front.iov_base;
 end = p + msg->front_alloc_len;

 encode_spgid(&p, &backoff->spgid);
 ceph_encode_32(&p, map_epoch);
 ceph_encode_8(&p, CEPH_OSD_BACKOFF_OP_ACK_BLOCK);
 ceph_encode_64(&p, backoff->id);
 encode_hoid(&p, end, backoff->begin);
 encode_hoid(&p, end, backoff->end);
 BUG_ON(p != end);

 msg->front.iov_len = p - msg->front.iov_base;
 msg->hdr.version = cpu_to_le16(1);
 msg->hdr.front_len = cpu_to_le32(msg->front.iov_len);

 return msg;
}
