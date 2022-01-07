
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clip_vcc {int encap; int idle_timeout; int old_pop; scalar_t__ old_push; int last_use; scalar_t__ xoff; int * entry; struct atm_vcc* vcc; } ;
struct atm_vcc {int pop; scalar_t__ push; int flags; struct clip_vcc* user_back; } ;


 int ATM_VF_IS_CLIP ;
 int EBADFD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int clip_pop ;
 scalar_t__ clip_push ;
 int jiffies ;
 struct clip_vcc* kmalloc (int,int ) ;
 int pr_debug (char*,struct clip_vcc*,struct atm_vcc*) ;
 int set_bit (int ,int *) ;
 int vcc_process_recv_queue (struct atm_vcc*) ;

__attribute__((used)) static int clip_mkip(struct atm_vcc *vcc, int timeout)
{
 struct clip_vcc *clip_vcc;

 if (!vcc->push)
  return -EBADFD;
 clip_vcc = kmalloc(sizeof(struct clip_vcc), GFP_KERNEL);
 if (!clip_vcc)
  return -ENOMEM;
 pr_debug("%p vcc %p\n", clip_vcc, vcc);
 clip_vcc->vcc = vcc;
 vcc->user_back = clip_vcc;
 set_bit(ATM_VF_IS_CLIP, &vcc->flags);
 clip_vcc->entry = ((void*)0);
 clip_vcc->xoff = 0;
 clip_vcc->encap = 1;
 clip_vcc->last_use = jiffies;
 clip_vcc->idle_timeout = timeout * HZ;
 clip_vcc->old_push = vcc->push;
 clip_vcc->old_pop = vcc->pop;
 vcc->push = clip_push;
 vcc->pop = clip_pop;


 vcc_process_recv_queue(vcc);

 return 0;
}
