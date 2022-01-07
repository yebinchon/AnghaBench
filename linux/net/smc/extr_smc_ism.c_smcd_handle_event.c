
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smcd_event {int dummy; } ;
struct smcd_dev {int event_wq; } ;
struct smc_ism_event_work {int work; struct smcd_event event; struct smcd_dev* smcd; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct smc_ism_event_work* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int smc_ism_event_work ;

void smcd_handle_event(struct smcd_dev *smcd, struct smcd_event *event)
{
 struct smc_ism_event_work *wrk;


 wrk = kmalloc(sizeof(*wrk), GFP_ATOMIC);
 if (!wrk)
  return;
 INIT_WORK(&wrk->work, smc_ism_event_work);
 wrk->smcd = smcd;
 wrk->event = *event;
 queue_work(smcd->event_wq, &wrk->work);
}
