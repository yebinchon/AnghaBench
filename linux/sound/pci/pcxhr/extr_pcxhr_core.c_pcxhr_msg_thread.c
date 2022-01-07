
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pcxhr_rmh {int* stat; int* cmd; int stat_len; } ;
struct pcxhr_mgr {int src_it_dsp; TYPE_1__* pci; struct pcxhr_rmh* prmh; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_ASYNC ;
 int CMD_TEST_IT ;
 int FIELD_SIZE ;
 int MASK_FIRST_FIELD ;
 int PCXHR_ERR_AUDIO ;
 int PCXHR_ERR_PIPE ;
 int PCXHR_ERR_STREAM ;
 int PCXHR_IRQ_ASYNC ;
 int PCXHR_IRQ_FREQ_CHANGE ;
 int PCXHR_IRQ_NOTIFY ;
 int PCXHR_IRQ_TIME_CODE ;
 int PCXHR_SIZE_MAX_LONG_STATUS ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 int pcxhr_handle_async_err (struct pcxhr_mgr*,int,int ,int,int) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;

__attribute__((used)) static void pcxhr_msg_thread(struct pcxhr_mgr *mgr)
{
 struct pcxhr_rmh *prmh = mgr->prmh;
 int err;
 int i, j;

 if (mgr->src_it_dsp & PCXHR_IRQ_FREQ_CHANGE)
  dev_dbg(&mgr->pci->dev,
   "PCXHR_IRQ_FREQ_CHANGE event occurred\n");
 if (mgr->src_it_dsp & PCXHR_IRQ_TIME_CODE)
  dev_dbg(&mgr->pci->dev,
   "PCXHR_IRQ_TIME_CODE event occurred\n");
 if (mgr->src_it_dsp & PCXHR_IRQ_NOTIFY)
  dev_dbg(&mgr->pci->dev,
   "PCXHR_IRQ_NOTIFY event occurred\n");
 if (mgr->src_it_dsp & (PCXHR_IRQ_FREQ_CHANGE | PCXHR_IRQ_TIME_CODE)) {

  pcxhr_init_rmh(prmh, CMD_TEST_IT);
  err = pcxhr_send_msg(mgr, prmh);
  dev_dbg(&mgr->pci->dev, "CMD_TEST_IT : err=%x, stat=%x\n",
       err, prmh->stat[0]);
 }
 if (mgr->src_it_dsp & PCXHR_IRQ_ASYNC) {
  dev_dbg(&mgr->pci->dev,
   "PCXHR_IRQ_ASYNC event occurred\n");

  pcxhr_init_rmh(prmh, CMD_ASYNC);
  prmh->cmd[0] |= 1;

  prmh->stat_len = PCXHR_SIZE_MAX_LONG_STATUS;
  err = pcxhr_send_msg(mgr, prmh);
  if (err)
   dev_err(&mgr->pci->dev, "ERROR pcxhr_msg_thread=%x;\n",
       err);
  i = 1;
  while (i < prmh->stat_len) {
   int nb_audio = ((prmh->stat[i] >> FIELD_SIZE) &
     MASK_FIRST_FIELD);
   int nb_stream = ((prmh->stat[i] >> (2*FIELD_SIZE)) &
      MASK_FIRST_FIELD);
   int pipe = prmh->stat[i] & MASK_FIRST_FIELD;
   int is_capture = prmh->stat[i] & 0x400000;
   u32 err2;

   if (prmh->stat[i] & 0x800000) {
    dev_dbg(&mgr->pci->dev,
     "TASKLET : End%sPipe %d\n",
         is_capture ? "Record" : "Play",
         pipe);
   }
   i++;
   err2 = prmh->stat[i] ? prmh->stat[i] : prmh->stat[i+1];
   if (err2)
    pcxhr_handle_async_err(mgr, err2,
             PCXHR_ERR_PIPE,
             pipe, is_capture);
   i += 2;
   for (j = 0; j < nb_stream; j++) {
    err2 = prmh->stat[i] ?
     prmh->stat[i] : prmh->stat[i+1];
    if (err2)
     pcxhr_handle_async_err(mgr, err2,
              PCXHR_ERR_STREAM,
              pipe,
              is_capture);
    i += 2;
   }
   for (j = 0; j < nb_audio; j++) {
    err2 = prmh->stat[i] ?
     prmh->stat[i] : prmh->stat[i+1];
    if (err2)
     pcxhr_handle_async_err(mgr, err2,
              PCXHR_ERR_AUDIO,
              pipe,
              is_capture);
    i += 2;
   }
  }
 }
}
