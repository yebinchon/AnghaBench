
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ceph_osd_op {int payload_len; } ;
struct TYPE_5__ {int version; } ;
struct TYPE_4__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_2__ hdr; TYPE_1__ front; } ;
struct ceph_eversion {int version; } ;
struct TYPE_6__ {int oloc; } ;
struct MOSDOpReply {int result; int epoch; int num_ops; int retry_attempt; int* rval; TYPE_3__ redirect; struct ceph_eversion replay_version; int user_version; int * outdata_len; int flags; int pgid; } ;
typedef int bad_replay_version ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ceph_decode_32_safe (void**,void* const,int,int ) ;
 int ceph_decode_64_safe (void**,void* const,int ,int ) ;
 int ceph_decode_8_safe (void**,void* const,int,int ) ;
 int ceph_decode_need (void**,void* const,int,int ) ;
 int ceph_decode_pgid (void**,void* const,int *) ;
 int ceph_oloc_init (int *) ;
 int ceph_redirect_decode (void**,void* const,TYPE_3__*) ;
 int e_inval ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (struct ceph_eversion*,void*,int) ;

__attribute__((used)) static int decode_MOSDOpReply(const struct ceph_msg *msg, struct MOSDOpReply *m)
{
 void *p = msg->front.iov_base;
 void *const end = p + msg->front.iov_len;
 u16 version = le16_to_cpu(msg->hdr.version);
 struct ceph_eversion bad_replay_version;
 u8 decode_redir;
 u32 len;
 int ret;
 int i;

 ceph_decode_32_safe(&p, end, len, e_inval);
 ceph_decode_need(&p, end, len, e_inval);
 p += len;

 ret = ceph_decode_pgid(&p, end, &m->pgid);
 if (ret)
  return ret;

 ceph_decode_64_safe(&p, end, m->flags, e_inval);
 ceph_decode_32_safe(&p, end, m->result, e_inval);
 ceph_decode_need(&p, end, sizeof(bad_replay_version), e_inval);
 memcpy(&bad_replay_version, p, sizeof(bad_replay_version));
 p += sizeof(bad_replay_version);
 ceph_decode_32_safe(&p, end, m->epoch, e_inval);

 ceph_decode_32_safe(&p, end, m->num_ops, e_inval);
 if (m->num_ops > ARRAY_SIZE(m->outdata_len))
  goto e_inval;

 ceph_decode_need(&p, end, m->num_ops * sizeof(struct ceph_osd_op),
    e_inval);
 for (i = 0; i < m->num_ops; i++) {
  struct ceph_osd_op *op = p;

  m->outdata_len[i] = le32_to_cpu(op->payload_len);
  p += sizeof(*op);
 }

 ceph_decode_32_safe(&p, end, m->retry_attempt, e_inval);
 for (i = 0; i < m->num_ops; i++)
  ceph_decode_32_safe(&p, end, m->rval[i], e_inval);

 if (version >= 5) {
  ceph_decode_need(&p, end, sizeof(m->replay_version), e_inval);
  memcpy(&m->replay_version, p, sizeof(m->replay_version));
  p += sizeof(m->replay_version);
  ceph_decode_64_safe(&p, end, m->user_version, e_inval);
 } else {
  m->replay_version = bad_replay_version;
  m->user_version = le64_to_cpu(m->replay_version.version);
 }

 if (version >= 6) {
  if (version >= 7)
   ceph_decode_8_safe(&p, end, decode_redir, e_inval);
  else
   decode_redir = 1;
 } else {
  decode_redir = 0;
 }

 if (decode_redir) {
  ret = ceph_redirect_decode(&p, end, &m->redirect);
  if (ret)
   return ret;
 } else {
  ceph_oloc_init(&m->redirect.oloc);
 }

 return 0;

e_inval:
 return -EINVAL;
}
