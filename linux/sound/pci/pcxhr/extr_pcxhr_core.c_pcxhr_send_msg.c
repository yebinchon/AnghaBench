
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_rmh {int dummy; } ;
struct pcxhr_mgr {int msg_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_send_msg_nolock (struct pcxhr_mgr*,struct pcxhr_rmh*) ;

int pcxhr_send_msg(struct pcxhr_mgr *mgr, struct pcxhr_rmh *rmh)
{
 int err;

 mutex_lock(&mgr->msg_lock);
 err = pcxhr_send_msg_nolock(mgr, rmh);
 mutex_unlock(&mgr->msg_lock);
 return err;
}
