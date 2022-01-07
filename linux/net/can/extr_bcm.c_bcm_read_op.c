
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bcm_op {int frames; int nframes; int ival2; int ival1; int count; int flags; } ;
struct bcm_msg_head {int nframes; int ival2; int ival1; int count; int flags; } ;


 int EINVAL ;
 int MHSIZ ;
 struct bcm_op* bcm_find_op (struct list_head*,struct bcm_msg_head*,int) ;
 int bcm_send_to_user (struct bcm_op*,struct bcm_msg_head*,int ,int ) ;

__attribute__((used)) static int bcm_read_op(struct list_head *ops, struct bcm_msg_head *msg_head,
         int ifindex)
{
 struct bcm_op *op = bcm_find_op(ops, msg_head, ifindex);

 if (!op)
  return -EINVAL;


 msg_head->flags = op->flags;
 msg_head->count = op->count;
 msg_head->ival1 = op->ival1;
 msg_head->ival2 = op->ival2;
 msg_head->nframes = op->nframes;

 bcm_send_to_user(op, msg_head, op->frames, 0);

 return MHSIZ;
}
