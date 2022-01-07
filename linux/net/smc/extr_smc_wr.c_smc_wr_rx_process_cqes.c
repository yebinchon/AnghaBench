
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_link {int wr_rx_tstamp; } ;
struct ib_wc {int status; TYPE_1__* qp; } ;
struct TYPE_2__ {struct smc_link* qp_context; } ;




 int IB_WC_SUCCESS ;

 int jiffies ;
 int smc_get_lgr (struct smc_link*) ;
 int smc_lgr_terminate (int ) ;
 int smc_wr_rx_demultiplex (struct ib_wc*) ;
 int smc_wr_rx_post (struct smc_link*) ;

__attribute__((used)) static inline void smc_wr_rx_process_cqes(struct ib_wc wc[], int num)
{
 struct smc_link *link;
 int i;

 for (i = 0; i < num; i++) {
  link = wc[i].qp->qp_context;
  if (wc[i].status == IB_WC_SUCCESS) {
   link->wr_rx_tstamp = jiffies;
   smc_wr_rx_demultiplex(&wc[i]);
   smc_wr_rx_post(link);
  } else {

   switch (wc[i].status) {
   case 130:
   case 129:
   case 128:



    smc_lgr_terminate(smc_get_lgr(link));
    break;
   default:
    smc_wr_rx_post(link);
    break;
   }
  }
 }
}
