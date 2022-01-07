
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iov_len; int * iov_base; } ;
struct ceph_msg {int footer; TYPE_3__* middle; TYPE_1__ front; int hdr; int data_length; int front_alloc_len; } ;
struct TYPE_5__ {int iov_len; int * iov_base; } ;
struct TYPE_6__ {TYPE_2__ vec; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int pr_debug (char*,struct ceph_msg*,int ,int ) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,int,int) ;

void ceph_msg_dump(struct ceph_msg *msg)
{
 pr_debug("msg_dump %p (front_alloc_len %d length %zd)\n", msg,
   msg->front_alloc_len, msg->data_length);
 print_hex_dump(KERN_DEBUG, "header: ",
         DUMP_PREFIX_OFFSET, 16, 1,
         &msg->hdr, sizeof(msg->hdr), 1);
 print_hex_dump(KERN_DEBUG, " front: ",
         DUMP_PREFIX_OFFSET, 16, 1,
         msg->front.iov_base, msg->front.iov_len, 1);
 if (msg->middle)
  print_hex_dump(KERN_DEBUG, "middle: ",
          DUMP_PREFIX_OFFSET, 16, 1,
          msg->middle->vec.iov_base,
          msg->middle->vec.iov_len, 1);
 print_hex_dump(KERN_DEBUG, "footer: ",
         DUMP_PREFIX_OFFSET, 16, 1,
         &msg->footer, sizeof(msg->footer), 1);
}
