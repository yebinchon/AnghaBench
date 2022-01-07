
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mixart_msg {int dummy; } ;
struct mixart_mgr {int msg_processed; int msg_lock; } ;


 int MSG_DEFAULT_SIZE ;
 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_msg (struct mixart_mgr*,struct mixart_msg*,int ,int ,int *) ;

int snd_mixart_send_msg_nonblock(struct mixart_mgr *mgr, struct mixart_msg *request)
{
 u32 message_frame;
 int err;


 mutex_lock(&mgr->msg_lock);
 err = send_msg(mgr, request, MSG_DEFAULT_SIZE, 0, &message_frame);
 mutex_unlock(&mgr->msg_lock);


 atomic_inc(&mgr->msg_processed);

 return err;
}
