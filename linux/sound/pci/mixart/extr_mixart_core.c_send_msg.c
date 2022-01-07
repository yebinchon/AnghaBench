
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ object_id; scalar_t__ desc; } ;
struct mixart_msg {int size; scalar_t__ message_id; scalar_t__ data; TYPE_2__ uid; } ;
struct mixart_mgr {scalar_t__ pending_event; TYPE_1__* pci; } ;
struct TYPE_3__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int MIXART_MEM (struct mixart_mgr*,scalar_t__) ;
 scalar_t__ MSG_BOUND_STACK_SIZE ;
 int MSG_DESCRIPTOR_SIZE ;
 scalar_t__ MSG_HEADER_SIZE ;
 scalar_t__ MSG_INBOUND_FREE_HEAD ;
 scalar_t__ MSG_INBOUND_FREE_STACK ;
 scalar_t__ MSG_INBOUND_FREE_TAIL ;
 scalar_t__ MSG_INBOUND_POST_HEAD ;
 scalar_t__ MSG_INBOUND_POST_STACK ;
 scalar_t__ MSG_TYPE_REQUEST ;
 int dev_err (int *,char*) ;
 scalar_t__ readl_be (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int writel (int ,int ) ;
 int writel_be (scalar_t__,int ) ;

__attribute__((used)) static int send_msg( struct mixart_mgr *mgr,
       struct mixart_msg *msg,
       int max_answersize,
       int mark_pending,
       u32 *msg_event)
{
 u32 headptr, tailptr;
 u32 msg_frame_address;
 int i;

 if (snd_BUG_ON(msg->size % 4))
  return -EINVAL;


 tailptr = readl_be(MIXART_MEM(mgr, MSG_INBOUND_FREE_TAIL));
 headptr = readl_be(MIXART_MEM(mgr, MSG_INBOUND_FREE_HEAD));

 if (tailptr == headptr) {
  dev_err(&mgr->pci->dev, "error: no message frame available\n");
  return -EBUSY;
 }

 if( (tailptr < MSG_INBOUND_FREE_STACK) || (tailptr >= (MSG_INBOUND_FREE_STACK+MSG_BOUND_STACK_SIZE))) {
  return -EINVAL;
 }

 msg_frame_address = readl_be(MIXART_MEM(mgr, tailptr));
 writel(0, MIXART_MEM(mgr, tailptr));


 tailptr += 4;
 if( tailptr >= (MSG_INBOUND_FREE_STACK+MSG_BOUND_STACK_SIZE) )
  tailptr = MSG_INBOUND_FREE_STACK;

 writel_be(tailptr, MIXART_MEM(mgr, MSG_INBOUND_FREE_TAIL));




 writel_be( msg->size + MSG_DESCRIPTOR_SIZE, MIXART_MEM(mgr, msg_frame_address) );
 writel_be( msg->message_id , MIXART_MEM(mgr, msg_frame_address + 4) );
 writel_be( msg->uid.object_id, MIXART_MEM(mgr, msg_frame_address + 8) );
 writel_be( msg->uid.desc, MIXART_MEM(mgr, msg_frame_address + 12) );
 writel_be( MSG_DESCRIPTOR_SIZE, MIXART_MEM(mgr, msg_frame_address + 16) );
 writel_be( MSG_DESCRIPTOR_SIZE, MIXART_MEM(mgr, msg_frame_address + 20) );
 writel_be( msg->size, MIXART_MEM(mgr, msg_frame_address + 24) );
 writel_be( MSG_DESCRIPTOR_SIZE, MIXART_MEM(mgr, msg_frame_address + 28) );
 writel_be( 0, MIXART_MEM(mgr, msg_frame_address + 32) );
 writel_be( MSG_DESCRIPTOR_SIZE + max_answersize, MIXART_MEM(mgr, msg_frame_address + 36) );


 for( i=0; i < msg->size; i+=4 ) {
  writel_be( *(u32*)(msg->data + i), MIXART_MEM(mgr, MSG_HEADER_SIZE + msg_frame_address + i) );
 }

 if( mark_pending ) {
  if( *msg_event ) {

   mgr->pending_event = *msg_event;
  }
  else {

   mgr->pending_event = msg_frame_address;


   *msg_event = msg_frame_address;
  }
 }


 msg_frame_address |= MSG_TYPE_REQUEST;


 headptr = readl_be(MIXART_MEM(mgr, MSG_INBOUND_POST_HEAD));

 if( (headptr < MSG_INBOUND_POST_STACK) || (headptr >= (MSG_INBOUND_POST_STACK+MSG_BOUND_STACK_SIZE))) {
  return -EINVAL;
 }

 writel_be(msg_frame_address, MIXART_MEM(mgr, headptr));


 headptr += 4;
 if( headptr >= (MSG_INBOUND_POST_STACK+MSG_BOUND_STACK_SIZE) )
  headptr = MSG_INBOUND_POST_STACK;

 writel_be(headptr, MIXART_MEM(mgr, MSG_INBOUND_POST_HEAD));

 return 0;
}
