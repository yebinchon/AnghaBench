
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int u32 ;
struct TYPE_19__ {int src_fadvise_flags; int flags; int src_version; int snapid; } ;
struct TYPE_17__ {int cmp_mode; int cmp_op; int value_len; int name_len; } ;
struct TYPE_15__ {int expected_write_size; int expected_object_size; } ;
struct TYPE_27__ {int cookie; } ;
struct TYPE_25__ {int gen; int op; int cookie; } ;
struct TYPE_23__ {int indata_len; int method_len; int class_len; } ;
struct TYPE_21__ {int truncate_seq; int truncate_size; int length; int offset; } ;
struct ceph_osd_req_op {int op; int indata_len; int flags; TYPE_14__ copy_from; TYPE_12__ xattr; TYPE_10__ alloc_hint; TYPE_8__ notify; TYPE_6__ watch; TYPE_4__ cls; TYPE_2__ extent; } ;
struct TYPE_18__ {void* src_fadvise_flags; int flags; void* src_version; void* snapid; } ;
struct TYPE_16__ {int cmp_mode; int cmp_op; void* value_len; void* name_len; } ;
struct TYPE_28__ {void* expected_write_size; void* expected_object_size; } ;
struct TYPE_26__ {void* cookie; } ;
struct TYPE_24__ {void* gen; int op; void* ver; void* cookie; } ;
struct TYPE_22__ {void* indata_len; int method_len; int class_len; } ;
struct TYPE_20__ {void* truncate_seq; void* truncate_size; void* length; void* offset; } ;
struct ceph_osd_op {void* payload_len; void* flags; int op; TYPE_13__ copy_from; TYPE_11__ xattr; TYPE_9__ alloc_hint; TYPE_7__ notify; TYPE_5__ watch; TYPE_3__ cls; TYPE_1__ extent; } ;
 int WARN_ON (int) ;
 int ceph_osd_op_name (int) ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static u32 osd_req_encode_op(struct ceph_osd_op *dst,
        const struct ceph_osd_req_op *src)
{
 switch (src->op) {
 case 133:
  break;
 case 136:
 case 130:
 case 129:
 case 128:
 case 132:
  dst->extent.offset = cpu_to_le64(src->extent.offset);
  dst->extent.length = cpu_to_le64(src->extent.length);
  dst->extent.truncate_size =
   cpu_to_le64(src->extent.truncate_size);
  dst->extent.truncate_seq =
   cpu_to_le32(src->extent.truncate_seq);
  break;
 case 144:
  dst->cls.class_len = src->cls.class_len;
  dst->cls.method_len = src->cls.method_len;
  dst->cls.indata_len = cpu_to_le32(src->cls.indata_len);
  break;
 case 131:
  dst->watch.cookie = cpu_to_le64(src->watch.cookie);
  dst->watch.ver = cpu_to_le64(0);
  dst->watch.op = src->watch.op;
  dst->watch.gen = cpu_to_le32(src->watch.gen);
  break;
 case 137:
  break;
 case 138:
  dst->notify.cookie = cpu_to_le64(src->notify.cookie);
  break;
 case 139:
  break;
 case 135:
  dst->alloc_hint.expected_object_size =
      cpu_to_le64(src->alloc_hint.expected_object_size);
  dst->alloc_hint.expected_write_size =
      cpu_to_le64(src->alloc_hint.expected_write_size);
  break;
 case 134:
 case 143:
  dst->xattr.name_len = cpu_to_le32(src->xattr.name_len);
  dst->xattr.value_len = cpu_to_le32(src->xattr.value_len);
  dst->xattr.cmp_op = src->xattr.cmp_op;
  dst->xattr.cmp_mode = src->xattr.cmp_mode;
  break;
 case 141:
 case 140:
  break;
 case 142:
  dst->copy_from.snapid = cpu_to_le64(src->copy_from.snapid);
  dst->copy_from.src_version =
   cpu_to_le64(src->copy_from.src_version);
  dst->copy_from.flags = src->copy_from.flags;
  dst->copy_from.src_fadvise_flags =
   cpu_to_le32(src->copy_from.src_fadvise_flags);
  break;
 default:
  pr_err("unsupported osd opcode %s\n",
   ceph_osd_op_name(src->op));
  WARN_ON(1);

  return 0;
 }

 dst->op = cpu_to_le16(src->op);
 dst->flags = cpu_to_le32(src->flags);
 dst->payload_len = cpu_to_le32(src->indata_len);

 return src->indata_len;
}
