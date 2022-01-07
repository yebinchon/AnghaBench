
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_llc_send_work {int llclen; int work; int llcbuf; struct smc_link* link; } ;
struct smc_link {int llc_wq; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct smc_llc_send_work* kmalloc (int,int ) ;
 int memcpy (int *,void*,int) ;
 int queue_work (int ,int *) ;
 int smc_llc_send_message_work ;

__attribute__((used)) static int smc_llc_send_message(struct smc_link *link, void *llcbuf, int llclen)
{
 struct smc_llc_send_work *wrk = kmalloc(sizeof(*wrk), GFP_ATOMIC);

 if (!wrk)
  return -ENOMEM;
 INIT_WORK(&wrk->work, smc_llc_send_message_work);
 wrk->link = link;
 wrk->llclen = llclen;
 memcpy(&wrk->llcbuf, llcbuf, llclen);
 queue_work(link->llc_wq, &wrk->work);
 return 0;
}
